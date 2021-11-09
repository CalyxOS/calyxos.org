module GenerateDataPages
  HOME      = File.expand_path('../..', __FILE__)
  RELEASE_DATA = "#{HOME}/pages/_data/downloads.yml"
  INSTALL_DIR  = "#{HOME}/pages/install"
  DEVICES_DIR  = "#{INSTALL_DIR}/devices"
  INSTALL_TEMPLATE_DIR = "#{INSTALL_DIR}/_templates"
  RELEASE_INDEX_TEMPLATE = "#{INSTALL_TEMPLATE_DIR}/_choose_os.html"
  INSTALL_TEMPLATE = "#{INSTALL_TEMPLATE_DIR}/_install.md"
  OSES = [
    {'name' => 'Windows','codename' => 'windows'},
    {'name' => 'MacOS', 'codename' => 'mac'},
    {'name' => 'Linux', 'codename' => 'linux'}
  ]

  class << self
    def requirements_met?
      require "liquid"
    rescue LoadError
      return false
    end

    # filter on the template before it is parsed
    def pre_filter(body)
      body.
        gsub('\{%', '<xxx begin xxx>').
        gsub('\%}', '<xxx end xxx>').
        gsub('\{{', '<zzz begin zzz>').
        gsub('\}}', '<zzz end zzz>')
    end

    # filter on the template after it is rendered
    def post_filter(body)
      body.
        gsub('<xxx begin xxx>', '{%').
        gsub('<xxx end xxx>', '%}').
        gsub('<zzz begin zzz>', '{{').
        gsub('<zzz end zzz>', '}}')
    end

    def render(template:, context:, dest:)
      FileUtils.mkdir_p(File.dirname(dest))
      File.open(dest, 'w') do |f|
        f.write post_filter(template.render(context))
        f.write "\n<!-- Auto generated. DO NOT EDIT -->\n"
      end
      puts "CREATE #{dest}"
    end

    def cleanup_dirs(dirs)
      base = File.dirname(dirs.first)
      Dir.new(base).each do |dir|
        next if dir =~ /^[_|\.]/
        full_path = File.join(base,dir)
        if Dir.exist?(full_path) && !dirs.include?(full_path)
          puts "REMOVE #{full_path}"
        end
      end
    end

    def load_template(path)
      Liquid::Template.parse(pre_filter(File.read(path)))
    end

    def generate_os_pages(release ,template:)
      OSES.each do |os|
        dest = File.join(DEVICES_DIR, release["codename"], os["codename"] + ".md")
        context = release.merge("os_name" => os["name"], "os_codename" => os["codename"])
        render(template: template, context: context, dest: dest)
      end
    end

    def generate_device_pages
      releases = YAML.load(File.new(RELEASE_DATA))
      index_template = load_template(RELEASE_INDEX_TEMPLATE)
      install_template = load_template(INSTALL_TEMPLATE)
      dirs = []
      releases["stable"].each do |release|
        device_dir = File.join(DEVICES_DIR, release["codename"])
        dirs << device_dir
        FileUtils.mkdir_p(device_dir)
        render(template: index_template, dest: File.join(device_dir,'index.md'), context: release)
        generate_os_pages(release, template: install_template)
      end
      cleanup_dirs(dirs)
    end

    def generate
      generate_device_pages
      puts "DONE"
    end
  end
end


desc "Generate the pages that are based on data files"
task "generate-data-pages" do
  if GenerateDataPages.requirements_met?
    GenerateDataPages.generate
  else
    puts "Requirements:"
    puts "gem install liquid"
  end
end