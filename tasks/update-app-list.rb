#!/usr/bin/env ruby

require 'down'
require 'fileutils'
require 'yaml'
require 'json'

module Apps

  APPS_URL  = "https://gitlab.com/CalyxOS/lfs_prebuilts_calyx_fdroid/-/raw/main/repo/index-v1.json"
  ICON_URL  = "https://gitlab.com/CalyxOS/lfs_prebuilts_calyx_fdroid/-/raw/main/repo/"
  HOME      = File.expand_path('../..', __FILE__)
  DEST_FILE = "#{HOME}/pages/_data/apps.yml"
  ICON_DIR  = "#{HOME}/pages/assets/images/apps/"
  APP_PAGES = "#{HOME}/pages/docs/guide/apps/"
  TEMPLATE  = "#{HOME}/pages/docs/guide/apps/_template.md"

  EXCLUDE = ['f-droid-basic', 'aurora-store'] # we have custom pages for these

  ELEMENTS  = %w(packageName webSite description name summary icon license categories sourceCode donate issueTracker)

  class << self
    def requirements_met?
      require "down"
      require "liquid"
    rescue LoadError
      return false
    end

    def download_icon(app)
      id = app["packageName"]
      src_url = ICON_URL + id + "/en-US/icon.png"
      dest_file = ICON_DIR + id + ".png"
      unless File.exist?(dest_file)
        tempfile = Down.download(src_url)
        tempfile.close
        FileUtils.move(tempfile.path, dest_file)
      end
    end

    def render_app_page(app, template)
      File.open(APP_PAGES + app["slug"] + ".md", 'w') do |f|
        f.write template.render(app)
      end
    end

    # the markup used in f-droid descriptions is mostly html, some markup, but
    # has these weird ''quote'' markdup that I think is supposed to be bold.
    def to_markdown(str)
      str.gsub(/'''(.*)'''/, "**\\1**\n").gsub(/''(.*)''/, "**\\1**")
    end

    def fetch(hsh, locator)
      locator.split('.').each do |i|
        hsh = hsh[i]
        return nil if hsh.nil?
      end
      return hsh
    end

    def copy_elements(app)
      new_app = {}
      ELEMENTS.each do |el_name|
        value = app[el_name]
        value = value.nil? ? "" : value
        new_app[el_name] = value
      end
      if new_app["name"] == ""
        new_app["name"] = fetch(app, "localized.en-US.name")
      end
      if new_app["summary"] == ""
        new_app["summary"] = fetch(app, "localized.en-US.summary")
      end
      new_app["iconUrl"] = '/assets/images/apps/' + new_app["packageName"] + '.png'
      new_app["slug"] = new_app["name"].downcase.gsub(/[^a-z0-9]/i,'-').gsub(/\-\-/,'-')
      new_app["description"] = to_markdown(new_app["description"])
      return new_app
    end

    def update
      tempfile = Down.download(APPS_URL)
      FileUtils.mkdir_p(ICON_DIR)

      template = Liquid::Template.parse(File.read(TEMPLATE))
      json = JSON.load(tempfile)

      yml = {"apps" => []}
      json["apps"].each do |app|
        app = copy_elements(app)
        unless EXCLUDE.include?(app['slug'])
          download_icon(app)
          render_app_page(app, template)
          yml["apps"] << app
        end
      end

      File.open(DEST_FILE, 'w') do |f|
        f.write yml.to_yaml
      end
      puts "CREATED #{DEST_FILE}"
      puts "DONE"
    end
  end
end


desc "Update the file pages/_data/apps.yml"
task "update-apps" do
  if Apps.requirements_met?
    Apps.update
  else
    puts "Requirements:"
    puts "gem install down liquid"
  end
end
