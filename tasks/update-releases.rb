#!/usr/bin/env ruby

require 'fileutils'
require 'yaml'

module Releases

  RELEASES        = ["stable"]
  RELEASE_SOURCE  = 'https://gitlab.com/calyxos/release.git/'
  HASHES_SOURCE   = 'https://gitlab.com/calyxos/releases.git/'
  RELEASE_DL_BASE = 'https://release.calyxinstitute.org/'
  HOME            = File.expand_path('../..', __FILE__)
  RELEASE_CACHE   = "#{HOME}/tmp/release"
  HASHES_CACHE    = "#{HOME}/tmp/hashes"
  DEST_FILE       = "#{HOME}/pages/_data/downloads.yml"

  CODENAME_MAP = {
    "bramble"        => "Pixel 4a (5G)",
    "redfin"         => "Pixel 5",
    "sunfish"        => "Pixel 4a",
    "coral"          => "Pixel 4 XL",
    "flame"          => "Pixel 4",
    "bonito"         => "Pixel 3a XL",
    "sargo"          => "Pixel 3a",
    "crosshatch"     => "Pixel 3 XL",
    "blueline"       => "Pixel 3",
    "taimen"         => "Pixel 2 XL",
    "walleye"        => "Pixel 2",
    "jasmine_sprout" => "Xiaomi Mi A2"
  }

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

    def parse_release(release)
      info = []
      Dir.chdir(RELEASE_CACHE) do
        CODENAME_MAP.each do |codename, device|
          release_filename = codename + "-" + release
          unless File.exist?(release_filename)
            puts "SKIPPED #{codename}"
            next
          end
          release_file = File.read(release_filename)
          build_number, timestamp, build_id = release_file.split(' ')
          date = build_number.split('.')[0..2].join('-')
          firmware_filename = codename + "-factory-#{build_number}.zip"
          sha256 = get_hash_for(firmware_filename)
          info << {
            "name" => device,
            "codename" => codename,
            "link" => RELEASE_DL_BASE + firmware_filename,
            "sha256" => sha256,
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
