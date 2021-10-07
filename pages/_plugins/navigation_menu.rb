#
# Adds the liquid tag "navigation_menu"
#
# Example _data/menu.yml file:
#
# ---
# - home (index)
# - about:
#   - features
#   - contributors
# - get:
#   - download
#   - install
# - development
# - news
#
# Path vs URL
# -----------------------
#
# The path does not include a leading /, and does include the file suffix.
#
# For example:
#
#   page.path => "docs/guide/apps/weather.md"
#   page.url  => "/docs/guide/apps/weather/"
#
module Jekyll

  class DummyPage < Hash
    attr_accessor :url
  end

  class MenuTag < Liquid::Tag

    def render(context)
      @page = context.registers[:page]
      @site = context.registers[:site]
      @menu_data = @site.data["menu"]
    end

    protected

    def render_menu_items(items, options={})
      options[:level] ||= 0
      items.map.each { |menu_item|
        render_menu_item(menu_item, options)
      }.join("\n")
    end

    def render_menu_item(menu_item, options={})
      prefix       = path_prefix(options[:prefix])
      level        = options[:level]

      if menu_item.is_a? String
        item       = menu_item
        sub_items  = nil
      elsif menu_item.is_a? Hash
        # menu_item e.g. {"about"=>["features", "contributors"]}
        item       = menu_item.keys.first
        sub_items  = menu_item.values.first
      end

      path = prefix + item
      page = @site.find_page(path)
      if page.nil?
        if !options[:silent]
          return render_error(item, level)
        else
          page = DummyPage.new
          page["title"] = path
          page.url = @page["url"] + '#' + path
        end
      end

      title       = page["nav_title"] || page["title"] || page.name
      description = page["description"] if options[:description]

      if @start_level.nil? || level >= @start_level
        render_item(
          level: level, selected: is_selected?(page, options, sub_items),
          url: page.url, title: title, description: description
        ) + get_sub_menu_str(sub_items, path, options)
      else
        get_sub_menu_str(sub_items, path, options)
      end
    end

    def get_sub_menu_str(items, path, options)
      return "" if items.nil?
      next_level = options[:level] + 1
      return "" if options[:max_level] && next_level >= options[:max_level]
      if options[:expand] || @page['path'] =~ /\A#{Regexp.escape(path)}\//
        render_menu_items(items, prefix: path, level: next_level)
      else
        ""
      end
    end

    def render_item(level:, selected:, url:, title:, description:)
      href = [@site.baseurl, url].join('/').gsub(/\/+/,'/')
      str = %(<li class="nav-level-#{level} #{@li_class}">)
      str << %(<a class="nav-level-#{level} #{@a_class} #{@active_class if selected}" href="#{href}">#{title}</a>)
      if description
        str << %(<span class="description">#{description}</span>)
      end
      str << %(</li>)
      return str
    end

    def render_error(page_name, level)
      puts "ERROR: no page with name '#{page_name}'"
%(<li class="nav-level-#{level} #{@li_class}">
  <a class="nav-level-#{level} #{@a_class}" href="#">No Page #{page_name}</a>
</li>)
    end

    def is_selected?(page, options, sub_items)
      if page.url == @page["url"]
        true
      elsif page_parent?(parent: page, child: @page)
        if options[:level] == options[:active_at_level]
          # force active when active_at_level is set
          true
        elsif sub_items.nil?
          # if there is no more menu, make this element active
          true
        else
          false
        end
      end
    end

    # returns true if child is a descendant of parent
    def page_parent?(parent:, child:)
      !!( child['url'] =~ /\A#{Regexp.escape(parent['url'])}/ )
    end

    def path_prefix(prefix)
      if prefix.nil? || prefix == ""
        ""
      else
        prefix + "/"
      end
    end

    #
    # convert "a:1 b:2" into {a: "1", b: "2"}
    #
    def parse_named_args(str)
      Hash[str.split(/\s/).map {|i| i.split(':')}]
    end

    #
    # we represent menu data as just the raw structure we get
    # from yaml. For example:
    #
    # ["home", {"get" => ["download", "install"]}]
    #
    # this method lets you extract a selected part of the tree
    #
    def extract_menu_item(menu, search_item)
      if menu.is_a? Hash
        if menu.keys.first == search_item
          return menu.values.first
        else
          return nil
        end
      elsif menu.is_a?(String)
        if menu == search_item
          return menu
        else
          return nil
        end
      elsif menu.is_a?(Array)
        menu.each do |item|
          result = extract_menu_item(item, search_item)
          return result if result
        end
      end
    end
  end

  class TopNavigationMenuTag < MenuTag
    def initialize(tag_name, text, tokens)
      @args = parse_named_args(text)
      @li_class = @args["li"]
      @a_class  = @args["a"]
      @active_class   = @args["active"]
      super
    end

    def render(context)
      super
      render_menu_items(@menu_data, max_level: 0, active_at_level: 0)
    end
  end

  class NavigationMenuTag < MenuTag
    def initialize(tag_name, text, tokens)
      @args = parse_named_args(text)
      @li_class = @args["li"]
      @a_class  = @args["a"]
      @active_class   = @args["active"]
      @start_level   = (@args["start"] || 0).to_i
      super
    end

    def render(context)
      super
      if @page["menu"]
        menu_data = @page["menu"]
      else
        menu_data = @menu_data
      end
      render_menu_items(menu_data, silent: true)
    end
  end

  #
  # TODO: support both single level and expanded content menus
  #       (e.g. allow argument to modify 'expand' parameter )
  #
  class ContentMenuTag < MenuTag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      super
      path = @page["dir"][1..-2] # remove leading and trailing /
      current_root = @menu_data
      path.split('/').each do |path_segment|
        next if path_segment == ""
        current_root = current_root.find {|item| item.is_a?(Hash) && item.keys.first == path_segment}[path_segment]
        return "" if current_root.nil?
      end
      "<ul class='content-menu'>" +
        render_menu_items(
          current_root,
          prefix: path, description: true, expand: false
        ) +
      "</ul>"
    end
  end

  class BreadcrumbsTag < MenuTag
    def initialize(tag_name, text, tokens)
      #@li_class, @a_class, @active_class = text.split(' ')
      super
    end

    def render(context)
      super
      return unless @page["url"]
      path = @page["url"]
      html = []
      html << '<nav>'
      html << '  <ol class="breadcrumb">'
      path_so_far = ""
      path.split('/').each do |segment|
        path_so_far = File.join(path_so_far, segment)
        page = @site.find_page(path_so_far)
        if page
          title = page["nav_title"] || page["title"]
          url   = [@site.baseurl, page["url"]].join('/').gsub(/\/+/,'/')
          html << '    <li class="breadcrumb-item"><a href="%s">%s</a></li>' % [url, title]
        end
      end
      html << '  </ol>'
      html << '</nav>'
      html.join("\n")
    end
  end
end

Liquid::Template.register_tag('top_navigation_menu', Jekyll::TopNavigationMenuTag)
Liquid::Template.register_tag('navigation_menu', Jekyll::NavigationMenuTag)
Liquid::Template.register_tag('content_menu', Jekyll::ContentMenuTag)
Liquid::Template.register_tag('breadcrumbs', Jekyll::BreadcrumbsTag)
