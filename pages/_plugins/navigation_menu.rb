#
# Adds the liquid tag "navigation_menu"
#
# Author: elijah@riseup.net
# Copyright (c) 2017 ThoughtWorks
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
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
      if options[:prefix].nil? || options[:prefix] == ""
        prefix = ""
      else
        prefix = options[:prefix] + "/"
      end
      level   = options[:level]
      subtree = ""
      if menu_item.is_a? String
        if menu_item =~ /\((.*?)\)/
          page = find_page($1)
        else
          page = find_page(prefix + menu_item)
        end
        return render_error(menu_item, level) unless page
      elsif menu_item.is_a? Hash
        index   = menu_item.keys.first
        path    = prefix + index
        page    = find_page(path)
        return render_error(index, level) unless page
        if options[:expand] || @page['path'] =~ /\A#{Regexp.escape(path)}\//
          subtree = render_menu_items(
            menu_item.values.first,
            prefix: prefix + index,
            level: level + 1
          )
        end
      end
      title    = page["nav_title"] || page["title"] || page.name
      selected = page.url == @page["url"]
      description = page["description"] if options[:description]
      render_item(
        level: level, selected: selected,
        url: page.url, title: title, description: description
      ) + subtree
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
      if @site.data["pages_by_path"]
        @site.data["pages_by_path"][name + ".md"] ||
        @site.data["pages_by_path"][name + "/index.md"]
      else
        @site.pages.find {|page|
          page.path == name + ".md" || page.path == name + "/index.md"
        }
      end
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

Liquid::Template.register_tag('navigation_menu', Jekyll::NavigationMenuTag)
Liquid::Template.register_tag('content_menu', Jekyll::ContentMenuTag)

