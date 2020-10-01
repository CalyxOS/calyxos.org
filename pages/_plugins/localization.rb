#
# Author: elijah@riseup.net
# Copyright (c) 2020 Calyx Institute
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
  class HtmlLangTag < Liquid::Tag
    def render(context)
      site = context.registers[:site]
      if site.active_lang == "" || site.active_lang == nil || site.active_lang == site.default_lang
        site.default_lang
      else
        site.active_lang
      end
    end
  end
  class HtmlDirTag < Liquid::Tag
    def render(context)
      site = context.registers[:site]
      if ["ar", "fa", "he", "ug"].include?(site.active_lang)
        "rtl"
      else
        "ltr"
      end
    end
  end
  class HreflangTag < Liquid::Tag
    def render(context)
      site = context.registers[:site]
      page = context.registers[:page]
      site.languages.map {|lang|
        lang = lang.sub('_', '-')
        path = page["permalink"] || ""
        if !path.empty?
          href = [site.baseurl, lang, path].join('/')
        else
          href = [site.baseurl, lang].join('/')
        end
        href = href.gsub(/\/\//, '/')
        %(<link rel="alternate" hreflang="#{lang}" href="#{href}" />)
      }.join("\n  ")
    end
  end
  module LocaleName
    # Localized names of common languages
    # https://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers
    LANGUAGES = {
      "zh" => '中文',
      "es" => 'Español',
      "en" => 'English',
      "hi" => 'Hindi',
      "ar" => 'العربية',
      "pt" => 'Português',
      "ru" => 'Pyccĸий',
      "ja" => '日本語',
      "pa" => 'ਪੰਜਾਬੀ',
      "de" => 'Deutsch',
      "vi" => 'Tiếng Việt',
      "fr" => 'Français',
      "ur" => 'اُردُو',
      "fa" => 'فارسی',
      "tr" => 'Türkçe',
      "it" => 'Italiano',
      "el" => 'Ελληνικά',
      "pl" => 'Polski',
      "ca" => 'Català'
    }
    def locale_name(locale_code)
      locale_code = locale_code.to_s.downcase.strip
      LANGUAGES[locale_code] || locale_code
    end
  end
end

Liquid::Template.register_tag('html_lang', Jekyll::HtmlLangTag)
Liquid::Template.register_tag('html_dir', Jekyll::HtmlDirTag)
Liquid::Template.register_tag('hreflang', Jekyll::HreflangTag)
Liquid::Template.register_filter(Jekyll::LocaleName)

