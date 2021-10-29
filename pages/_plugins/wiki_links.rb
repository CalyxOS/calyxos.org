#
# Support for wiki-style links in the markup.
#
# For example:
#
#   [[page]] becomes <a href="/path/to/page">title of page</a>
#
# It also supports MediaWiki format:
#
#   [[page|title]]
#
# And wiki arrow format:
#
#   [[title => page]]
#
# If two pages have the same name, you can distinguish between them by
# specifying the full path:
#
#   [[page => path/to/page]]
#   [[page => other/path/to/page]]
#
# USAGE:
#
#   in liquid template: {{ content | wiki_link }}
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

  module WikiLinks
    LINK_RE = /\\?\[\[(([\p{Word} \.\,\?\!\"\'\|_\-\(\)\:\/\&\%]|[=-]&gt;)+?)\]\]/

    def page_url(text)
      @site ||= @context.registers[:site]
      if text
        page = @site.find_page(text.strip.downcase)
        if page
          [@site.baseurl, page.url].join('/').gsub(/\/\/+/,'/')
        else
          "missing"
          text.inspect
        end
      else
        "missing"
        text.inspect
      end
    end

    def wiki_link(text)
      @site ||= @context.registers[:site]
      text.gsub(LINK_RE) do |match|
        if match =~ /\A\\/
          # the string starts with a backslash, so skip all processing,
          # but remove the backslash
          match[1..-1]
        else
          match.gsub!(/\[\[|\]\]/,'')
          if match =~ /[=-]&gt;/
            title, page_name = match.split(/[=-]&gt;/)
          elsif match =~ /|/
            page_name, title = match.split('|')
          else
            page_name = match
            title = nil
          end
          title = title.strip if title
          page_name = page_name.strip
          if page_name =~ /\Ahttps?:\/\//
            title ||= page_name
            %(<a href="#{page_name}">#{title}</a>)
          else
            page_name = page_name.downcase.gsub(' ','-')
            page = @site.find_page(page_name)
            if page.nil?
              puts "ERROR: No such page '#{page_name}'"
              %(<a href="#{page_name}">#{page_name}</a>)
            else
              title ||= page["title"] || page.basename.gsub(/[_-]/, ' ')
              href = [@site.baseurl, page.url].join('/').gsub(/\/\/+/,'/')
              %(<a href="#{href}">#{title}</a>)
            end
          end
        end
      end
    end
  end

end

Liquid::Template.register_filter(Jekyll::WikiLinks)