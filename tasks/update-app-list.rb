module Apps
  APPS_URL  = "https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/index.xml"
  ICON_URL  = "https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/"
  HOME      = File.expand_path('../..', __FILE__)
  TMP_FILE  = "#{HOME}/tmp/apps.xml"
  DEST_FILE = "#{HOME}/pages/_data/apps.yml"
  ICON_DIR  = "#{HOME}/pages/assets/images/apps/"
  APP_PAGES = "#{HOME}/pages/docs/guide/apps/"
  TEMPLATE  = "#{HOME}/pages/docs/guide/apps/_template.md"

  ELEMENTS  = %w(id web desc name summary icon license category source donate tracker)
  class << self
    def requirements_met?
      require "rexml/document"
      require "liquid"
    rescue LoadError
      return false
    end

    def download_icon(app)
      id = app["id"]
      src_url = ICON_URL + id + "/en-US/icon.png"
      dest_file = ICON_DIR + id + ".png"
      unless File.exist?(dest_file)
        system("wget", src_url, "-O", dest_file)
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

    def copy_elements(app_el)
      app = {}
      ELEMENTS.each do |el_name|
        element = app_el.elements[el_name]
        value = element.nil? ? "" : element.text.to_s.strip
        app[el_name] = value
      end
      app["slug"] = app["name"].downcase.gsub(/[^a-z0-9]/i,'-').gsub(/\-\-/,'-')
      app["desc"] = to_markdown(app["desc"])
      return app
    end

    def update
      FileUtils.mkdir_p(File.dirname(TMP_FILE))
      system("wget", APPS_URL, "-O", TMP_FILE)
      return unless File.exist?(TMP_FILE)
      FileUtils.mkdir_p(ICON_DIR)
      template = Liquid::Template.parse(File.read(TEMPLATE))
      xml = REXML::Document.new(File.new(TMP_FILE))

      apps = {}
      inner_apps = []
      xml.root.each_element("application") do |app_el|
        app = copy_elements(app_el)
        inner_apps << app
        download_icon(app)
        render_app_page(app, template)
      end
      apps["apps"] = inner_apps

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
    puts "gem install rexml liquid"
  end
end