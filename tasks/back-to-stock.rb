#!/usr/bin/env ruby

require 'fileutils'
require 'yaml'
require 'json'

module BacktoStock

  JSON_URL = "https://github.com/AOSPAlliance/vendor_google_devices/raw/android11/config.json"
  HOME        = File.expand_path('../..', __FILE__)
  TMP_FILE    = "#{HOME}/tmp/back-to-stock.json"
  DEST_FILE   = "#{HOME}/pages/_data/back-to-stock.yml"
  DEVICES_DATA    = "#{HOME}/pages/_data/devices.yml"

  class << self
    def get_devices
      YAML.load(File.new(DEVICES_DATA))
    end

    def parse_apv(config)
      info = []
      get_devices.each do |codename, device|
        if config["devices"][codename] == nil
          puts "SKIPPED #{codename}"
          next
        end
        info << {
          "name" => device["model"],
          "brand" => device["brand"],
          "codename" => codename,
          "flash_link" => config["devices"][codename]["flash_url"],
            "factory_link" => config["devices"][codename]["factory_url"],
            "factory_sha256" => config["devices"][codename]["factory_sha256"]
        }
        puts "FINISHED #{codename}"
      end
      return info
    end

    def update
      system("wget", "--timestamping", JSON_URL, "-O", TMP_FILE)

      return unless File.exist?(TMP_FILE)

      config_json = JSON.parse(File.read(TMP_FILE))
      config = parse_apv(config_json)
      File.open(DEST_FILE, 'w') do |f|
        f.write config.to_yaml
      end
      puts "DONE"
      exit
    end
  end
end

desc 'fetch'

task 'back-to-stock' do
  BacktoStock.update
end
