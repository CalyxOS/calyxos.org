#!/usr/bin/env ruby

require 'fileutils'
require 'yaml'

module Releases

  RELEASES        = ["stable", "beta", "security-express", "factory"]
  RELEASE_SOURCE  = 'https://review.calyxos.org/CalyxOS/release'
  HASHES_SOURCE   = 'https://review.calyxos.org/CalyxOS/releases'
  RELEASE_DL_BASE = 'https://release.calyxinstitute.org/'
  HOME            = File.expand_path('../..', __FILE__)
  RELEASE_CACHE   = "#{HOME}/tmp/release"
  HASHES_CACHE    = "#{HOME}/tmp/hashes"
  DEST_FILE       = "#{HOME}/pages/_data/downloads.yml"
  DEVICES_DATA    = "#{HOME}/pages/_data/devices.yml"

  class << self
    def clone_release_repo
      FileUtils.mkdir_p(RELEASE_CACHE)
      Dir.chdir(RELEASE_CACHE) do
        `git clone #{RELEASE_SOURCE} .`
      end
    end

    def clone_hashes_repo
      FileUtils.mkdir_p(HASHES_CACHE)
      Dir.chdir(HASHES_CACHE) do
        `git clone #{HASHES_SOURCE} .`
      end
    end

    def update_release_repo
      Dir.chdir(RELEASE_CACHE) do
        `git pull`
      end
    end

    def update_hashes_repo
      Dir.chdir(HASHES_CACHE) do
        `git pull`
      end
    end

    def parse_releases
      releases = {}
      RELEASES.each do |release|
        releases[release] = parse_release(release)
      end
      return releases
    end

    def get_hash_for(filename)
      filename += ".sha256sum"
      Dir.chdir(HASHES_CACHE) do
        if File.exist?(filename)
          return File.read(filename).strip
        else
          return nil
        end
      end
    end

    def get_devices
      YAML.load(File.new(DEVICES_DATA))
    end

    def get_version_from(build_number)
      # https://gitlab.com/CalyxOS/vendor_calyx/-/blob/android15-qpr2/config/version.mk
      major = ( build_number % 1000000 ) / 100000
      minor = ( build_number % 100000 ) / 1000
      patch = ( build_number % 1000 ) / 10
      extra = ( build_number % 10 )
      if extra == 0
        return "#{major}.#{minor}.#{patch}"
      else
        return "#{major}.#{minor}.#{patch}-#{extra}"
      end
    end

    def get_android_from(build_number)
      # https://gitlab.com/CalyxOS/vendor_calyx/-/blob/android15-qpr2/config/version.mk
      major = ( build_number % 1000000 ) / 100000
      case major
      when 6
        return "15"
      when 5
        return "14"
      when 4
        return "13"
      when 3
        return "12"
      else
        return "?"
      end
    end

    def parse_release(release)
      info = []
      Dir.chdir(RELEASE_CACHE) do
        get_devices.each do |codename, device|
          incremental = true
          release_filename = codename + "-" + release
          old_release_filename = codename + "-old" + release
          if File.exist?(release_filename + "7")
            release_filename += "7"
            old_release_filename += "7"
          elsif File.exist?(release_filename + "6")
            release_filename += "6"
            old_release_filename += "6"
          elsif File.exist?(release_filename + "5")
            release_filename += "5"
            old_release_filename += "5"
          elsif File.exist?(release_filename + "4")
            release_filename += "4"
            old_release_filename += "4"
          elsif File.exist?(release_filename + "3")
            release_filename += "3"
            old_release_filename += "3"
          elsif File.exist?(release_filename + "2")
            release_filename += "2"
            old_release_filename += "2"
          end
          unless File.exist?(release_filename)
            puts "SKIPPED #{codename}"
            next
          end
          if not File.exist?(old_release_filename)
            incremental = false
          end
          release_file = File.read(release_filename)
          build_number, timestamp, build_id = release_file.split(' ')
          version = get_version_from(Integer(build_number))
          android = get_android_from(Integer(build_number))
          date = Time.at(timestamp.to_i).utc.strftime("%F")
          factory_filename = codename + "-factory-#{build_number}.zip"
          factory_sha256 = get_hash_for(factory_filename)
          ota_filename = codename + "-ota_update-#{build_number}.zip"
          ota_sha256 = get_hash_for(ota_filename)
          if incremental
            old_release_file = File.read(old_release_filename)
            old_build_number, old_timestamp, old_build_id = old_release_file.split(' ')
            old_date = Time.at(old_timestamp.to_i).utc.strftime("%F")
            incremental_filename = codename + "-incremental-#{old_build_number}-#{build_number}.zip"
            incremental_sha256 = get_hash_for(incremental_filename)
            if incremental_sha256 == nil
              incremental_filename = nil
              old_build_number = nil
            end
          else
            old_build_number = nil
            incremental_filename = nil
            incremental_sha256 = nil
          end
          info << {
            "name" => device["model"],
            "brand" => device["brand"],
            "codename" => codename,
            "version" => version,
            "android" => android,
            "web_install" => release == "factory" ? device["web_install"] : false,
            "factory_link" => RELEASE_DL_BASE + factory_filename,
            "factory_sha256" => factory_sha256,
            "ota_link" => RELEASE_DL_BASE + ota_filename,
            "ota_sha256" => ota_sha256,
            "incremental_link" => incremental_filename != nil ? RELEASE_DL_BASE + incremental_filename : nil,
            "incremental_sha256" => incremental_sha256,
            "incremental_old_build" => old_build_number,
            "date" => date
          }
          puts "FINISHED #{codename}"
        end
      end
      return info
    end

    def update
      unless File.exist?(RELEASE_CACHE)
        clone_release_repo
      end
      unless File.exist?(HASHES_CACHE)
        clone_hashes_repo
      end
      update_release_repo
      update_hashes_repo
      releases = parse_releases
      releases["releases"] = RELEASES
      File.open(DEST_FILE, 'w') do |f|
        f.write releases.to_yaml
      end
      puts "DONE"
      exit
    end
  end
end

desc 'fetch data on current firmware releases and build pages/_data/downloads.yml file'
task 'update-releases' do
  Releases.update
end
