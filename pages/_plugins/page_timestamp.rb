#
# Returns the last modified timestamp of a page.
#
# It uses page.date_from, page.date, or page.last_modified_at, in that order.
#
# Example usage:
#
#   {% page_timestamp %Y-%m-%d %}
#
module Jekyll
  class PageTimestamp < Liquid::Tag
    def initialize(tag_name, text, tokens)
      @format = text.strip
      if @format == ""
        @format = "%Y-%m-%d"
      end
      super
    end

    def render(context)
      @site = context.registers[:site]
      @page = context.registers[:page]
      timestamp = nil
      if @page["date_from"]
        file = File.join(@site.source, @page["date_from"])
        if File.exist?(file)
          timestamp = File.mtime(file)
        end
      elsif @page["date"]
        timestamp = @page.date
      else
        timestamp = Time.new(0)
      end
      if @page["last_modified_at"] && @page["last_modified_at"].last_modified_at_time > timestamp
        timestamp = @page["last_modified_at"].last_modified_at_time
      end
      timestamp.strftime(@format)
    end
  end
end

Liquid::Template.register_tag('page_timestamp', Jekyll::PageTimestamp)