#
# FindPage allows you to find pages using three different forms of page
# identification:
#
# PATH
#
# This is the same as the page.path property.
# Root is named "index.suffix"
#
# For example: [
#   "404.html", "news/index.md", "get/download/index.md",
#   "get/install/index.md", "get/index.md", "index.md"
# ]
#
# URL PATH
#
# This is the logical path, such as shown in the URL.
# Root is named "/".
#
# For example: [
#   "/404", "/news", "/get/download",
#   "/get/install", "/get", "/"
# ]
#
# NAME
#
# This is the name of the page, if it is unique. If there are
# two pages with the same name, the one with the shortest path
# is indexed. Root is named "".
#
# For example: [
#  "404", "news", "download",
#  "install", "get", ""
# ]
#
# USAGE
#
#   site.find_page(name_or_path)
#

module Jekyll
  module FindPage
    EXTENSIONS = ["md", "markdown", "html", "haml"]

    def find_page(path)
      if path =~ /\((.*?)\)/
        find_by_alias(path)
      elsif path =~ /\.(#{EXTENSIONS.join('|')})\Z/
        find_by_path(path)
      elsif path !~ /\//
        find_by_name(path)
      else
        find_by_url(path)
      end
    end

    def find_by_name(path)
      data["pages_by_name"][path]
    end

    def find_by_path(path)
      path = remove_leading_slash(path)
      path = remove_trailing_slash(path)
      data["pages_by_path"][path]
    end

    def find_by_url(path)
      absolute_path = add_leading_slash(remove_trailing_slash(path))
      page = data["pages_by_url"][absolute_path]
      if page.nil?
        key = data["pages_by_url"].keys.grep(Regexp.new(Regexp.escape(path))).first
        if key
          page = data["pages_by_url"][key]
        end
      end
      return page
    end

    # if path has parens, we extract what is in the parens and
    # do a direct name match. This is useful for building menus.
    # e.g. "- Home ()"
    def find_by_alias(path)
      alias_name = path.match(/\((.*?)\)/)[1]
      data["pages_by_name"][alias_name&.strip]
    end

    private

    def remove_leading_slash(path)
      path =~ /^\// ? path[1..-1] : path
    end

    def add_leading_slash(path)
      path !~ /^\// ? "/" + path : path
    end

    def remove_trailing_slash(path)
      path =~ /\/$/ && path != "/" ? path.chop : path
    end
  end

  module SetupPageIndex

    def self.setup(site)
      site.data["pages_by_path"] ||= Hash[
        site.pages.map {|page| [page.path, page]}
      ]
      site.data["pages_by_url"] ||= Hash[
        site.pages.map {|page| [basename_path(page), page]}
      ]
      site.data["pages_by_name"] ||= Hash[
        site.pages.map {|page| [basename(page), page]}
      ]
      site.extend Jekyll::FindPage
    end

    private

    # e.g.
    # /tools/ruby/index.md => ruby
    # /tools/ruby.md       => ruby
    def self.basename(page)
      if page.basename == "index"
        File.basename(File.dirname(page.path)).sub(/\A\.\z/,'')
      else
        page.basename.sub(/#{Regexp.escape(File.extname(page.path))}\z/, '')
      end
    end

    # e.g.
    # /tools/ruby/index.md => /tools/ruby
    # /tools/ruby.md       => /tools/ruby
    def self.basename_path(page)
      if page.basename == "index"
        "/" + File.dirname(page.path).sub(/\A\.\z/,'')
      else
        "/" + page.path.sub(/#{Regexp.escape(File.extname(page.path))}\z/, '')
      end
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site, payload|
  Jekyll::SetupPageIndex.setup(site)
end
