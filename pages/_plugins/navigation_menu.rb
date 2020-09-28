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
module Jekyll

  class MenuTag < Liquid::Tag

    def render(context)
      @page = context.registers[:page]
      @site = context.registers[:site]
      @menu_data = @site.data["menu"]
      @site.data["pages_by_path"] ||= Hash[
        @site.pages.map {|page| [page.path, page]}
      ]
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
      page = find_page(path)
      return render_error(item, level) unless page

      title       = page["nav_title"] || page["title"] || page.name
      selected    = page.url == @page["url"]
      description = page["description"] if options[:description]

      render_item(
        level: level, selected: selected,
        url: page.url, title: title, description: description
      ) + get_sub_menu_str(sub_items, path, options)
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
%(<li class="nav-level-#{level} #{@li_class}">
  <a class="nav-level-#{level} #{@a_class} #{@active_class if selected}" href="#{href}">#{title}</a>#{": " + description if description}
</li>)
    end

    def render_error(page_name, level)
      puts "ERROR: no page with name '#{page_name}'"
%(<li class="nav-level-#{level} #{@li_class}">
  <a class="nav-level-#{level} #{@a_class}" href="#">No Page #{page_name}</a>
</li>)
    end

    def find_page(name)
      if name =~ /\((.*?)\)/
        # if the menu item has parens, we extract that
        # and use it for the page name
        name = $1
      end
      if @site.data["pages_by_path"]
        @site.data["pages_by_path"][name + ".md"] ||
        @site.data["pages_by_path"][name + "/index.md"]
      else
        @site.pages.find {|page|
          page.path == name + ".md" || page.path == name + "/index.md"
        }
      end
    end

    def path_prefix(prefix)
      if prefix.nil? || prefix == ""
        ""
      else
        prefix + "/"
      end
    end
  end

  class TopNavigationMenuTag < MenuTag
    def initialize(tag_name, text, tokens)
      @li_class, @a_class, @active_class = text.split(' ')
      super
    end

    def render(context)
      super
      render_menu_items(@menu_data, max_level: 1)
    end
  end

  class NavigationMenuTag < MenuTag
    def initialize(tag_name, text, tokens)
      @li_class, @a_class, @active_class = text.split(' ')
      super
    end

    def render(context)
      super
      render_menu_items(@menu_data)
    end
  end

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
          prefix: path, description: true, expand: true
        ) +
      "</ul>"
    end
  end

end

Liquid::Template.register_tag('top_navigation_menu', Jekyll::TopNavigationMenuTag)
Liquid::Template.register_tag('navigation_menu', Jekyll::NavigationMenuTag)
Liquid::Template.register_tag('content_menu', Jekyll::ContentMenuTag)

