#
# Adds the liquid tag "include_page"
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

  class IncludePageTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      @page_name = text.strip
      super
    end

    def render(context)
      setup(context)
      page = find_page(@page_name)
      if page
        page["content"]
      else
        "Error: no page '#{@page_name}'!"
      end
    end

    protected

    def find_page(name)
      if name =~ /\//
        @site.data["pages_by_basename_path"][name]
      else
        @site.data["pages_by_basename"][name]
      end
    end

    def setup(context)
      @site ||= context.registers[:site]
      @site.data["pages_by_basename_path"] ||= Hash[
        @site.pages.map {|page| [basename_path(page), page]}
      ]
      @site.data["pages_by_basename"] ||= Hash[
        @site.pages.map {|page| [basename(page), page]}
      ]
    end
  end
end

Liquid::Template.register_tag('include_page', Jekyll::IncludePageTag)
