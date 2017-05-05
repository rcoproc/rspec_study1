require_relative 'network'

module Factory

  class << self

    def comments_feed_xml
      File.read(File.join('spec', 'fixtures', 'feed.xml'))
    end

    def blog_attributes1
      {
        title: "My Blog", 
        comments_feed_url: "http://feeds.mashable.com/Mashable1"
      }
    end

    def blog_attributes2
      {
        title: "My Blog2", 
        comments_feed_url: "http://feeds.mashable.com/Mashable2"
      }
    end

    def create_comments blog
      stub_network
      blog.comments.refresh
    end

  end

end
