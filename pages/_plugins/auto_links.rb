#
# Support for autolinking URIs in markeup.
#
# USAGE:
#
#   in liquid template: {{ content | auto_link }}
#
# Adapted from original Rails autolinking code by DHH
# Copyright (c) 2011 DHH
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
  module AutoLinks
    def auto_link(text)
      text.gsub(AUTO_LINK_RE) do
        scheme, href = $1, $&
        punctuation = []
        if linked?($`, $')
          # do not change string; URL is already linked
          href
        else
          # don't include trailing punctuation character as part of the URL
          while href.sub!(/[^#{WORD_PATTERN}\/-]$/, '')
            punctuation.push $&
            if opening = BRACKETS[punctuation.last] and href.scan(opening).size > href.scan(punctuation.last).size
              href << punctuation.pop
              break
            end
          end

          link_text = href.gsub(/(\A#{scheme}\/\/|\/\z)/,'')
          href = 'http://' + href unless scheme
          %(<a href="#{href}">#{link_text}</a>) + punctuation.reverse.join('')
        end
      end
    end

    private

    AUTO_LINK_RE = %r{
      (?: ((?:ed2k|ftp|http|https|irc|mailto|news|gopher|nntp|telnet|webcal|xmpp|callto|feed|svn|urn|aim|rsync|tag|ssh|sftp|rtsp|afs|file):)// | www\. )
      [^\s<\u00A0]+
    }ix
    AUTO_LINK_CRE = [/<[^>]+$/, /^[^>]*>/, /<a\b.*?>/i, /<\/a>/i]
    #AUTO_EMAIL_LOCAL_RE = /[\w.!#\$%&'*\/=?^`{|}~+-]/
    #AUTO_EMAIL_RE = /[\w.!#\$%+-]\.?#{AUTO_EMAIL_LOCAL_RE}*@[\w-]+(?:\.[\w-]+)+/
    BRACKETS = { ']' => '[', ')' => '(', '}' => '{' }
    WORD_PATTERN = '\p{Word}'

    # Detects already linked context or position in the middle of a tag
    def linked?(left, right)
      (left =~ AUTO_LINK_CRE[0] && right =~ AUTO_LINK_CRE[1]) ||
        (left.rindex(AUTO_LINK_CRE[2]) && $' !~ AUTO_LINK_CRE[3])
    end

  end
end

Liquid::Template.register_filter(Jekyll::AutoLinks)