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

    def wiki_link(text)
      setup
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
            page_name = page_name.downcase
            page = find_page(page_name)
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

    private

    def find_page(name)
      if name =~ /\//
        @site.data["pages_by_basename_path"][name]
      else
        @site.data["pages_by_basename"][name]
      end
    end

    # e.g.
    # /tools/ruby/index.md => ruby
    # /tools/ruby.md       => ruby
    def basename(page)
      if page.basename == "index"
        File.basename(File.dirname(page.path)).sub(/\A\.\z/,'')
      else
        page.basename.sub(/#{Regexp.escape(File.extname(page.path))}\z/, '')
      end
    end

    # e.g.
    # /tools/ruby/index.md => tools/ruby
    # /tools/ruby.md       => tools/ruby
    def basename_path(page)
      if page.basename == "index"
        File.dirname(page.path).sub(/\A\.\z/,'')
      else
        page.path.sub(/#{Regexp.escape(File.extname(page.path))}\z/, '')
      end
    end

    def setup
      @site ||= @context.registers[:site]
      @site.data["pages_by_basename_path"] ||= Hash[
        @site.pages.map {|page| [basename_path(page), page]}
      ]
      @site.data["pages_by_basename"] ||= Hash[
        @site.pages.map {|page| [basename(page), page]}
      ]
    end

  end
end

Liquid::Template.register_filter(Jekyll::WikiLinks)