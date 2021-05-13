module Apps
  APPS_URL  = "https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/index.xml"
  ICON_URL  = "https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/icons-640/"
  HOME      = File.expand_path('../..', __FILE__)
  TMP_FILE  = "#{HOME}/tmp/apps.xml"
  DEST_FILE = "#{HOME}/pages/_data/apps.yml"
  ICON_DIR  = "#{HOME}/pages/assets/images/apps/"

  class << self
    def requirements_met?
      require "rexml/document"
    rescue LoadError
      return false
    end

    def update
      # gitlab does not send Last-Modified, so --timestamping has no effect
      system("wget", "--timestamping", APPS_URL, "-O", TMP_FILE)

      return unless File.exist?(TMP_FILE)

      # Clear old icons
      FileUtils.rm_rf(ICON_DIR)
      FileUtils.mkdir(ICON_DIR)

      file = File.new(TMP_FILE)
      xml = REXML::Document.new file
      apps = {}
      xml.root.each_element("application") do |app_el|
        app = {}
        id = app_el["id"]
        ["icon", "web", "desc", "name", "summary"].each do |el_name|
          element = app_el.elements[el_name]
          value = element.nil? ? "" : element.text.to_s.strip
          app[el_name] = value
          if el_name == "icon"
            system("wget", "--timestamping", ICON_URL + value, "-O", ICON_DIR + value)
          end
        end
        apps[id] = app
      end

      File.open(DEST_FILE, 'w') do |f|
        f.write apps.to_yaml
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
    puts "apt install wget"
    puts "gem install rexml"
  end
end