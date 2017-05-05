module Factory

  class << self

    def comments_feed_xml
      File.read(File.join('spec', 'fixtures', 'feed.xml'))
    end

    def blog_attributes1
      {
        title: "My Blog", 
        comments_feed_url: "http://feeds.mashable.com/Mashable"
      }
    end

    def blog_attributes2
      {
        title: "My Blog2", 
        comments_feed_url: "http://feeds.mashable.com/Mashable"
      }
    end

  end

end
