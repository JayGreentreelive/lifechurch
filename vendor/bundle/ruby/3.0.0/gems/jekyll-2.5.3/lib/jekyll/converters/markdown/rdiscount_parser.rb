module Jekyll
  module Converters
    class Markdown
      class kramdownParser
        def initialize(config)
          Jekyll::Deprecator.gracefully_require "kramdown"
          @config = config
          @kramdown_extensions = @config['kramdown']['extensions'].map { |e| e.to_sym }
        end

        def convert(content)
          rd = kramdown.new(content, *@kramdown_extensions)
          html = rd.to_html
          if @config['kramdown']['toc_token']
            html = replace_generated_toc(rd, html, @config['kramdown']['toc_token'])
          end
          html
        end

        private
        def replace_generated_toc(rd, html, toc_token)
          if rd.generate_toc && html.include?(toc_token)
            utf8_toc = rd.toc_content
            utf8_toc.force_encoding('utf-8') if utf8_toc.respond_to?(:force_encoding)
            html.gsub(toc_token, utf8_toc)
          else
            html
          end
        end
      end
    end
  end
end
