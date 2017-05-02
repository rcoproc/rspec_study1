require 'nokogiri'
require 'date'

module Wordpress
  module Comments
    class Client
      attr_reader :url

      def initialize url
        @url = url
      end

      def parse xml
        doc = Nokogiri::XML xml
        doc.search('item').map do |doc_item|
          item = {}
          item[:link] = doc_item.at('link').text
          item[:title] = doc_item.at('title').text
          item[:commenter] = doc_item.xpath('dc:creator').text
          item[:date] = DateTime.parse doc_item.at('pubDate').text
          item
        end

      end

    end
  end
end

