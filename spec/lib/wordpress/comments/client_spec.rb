require_relative '../../../../lib/wordpress/comments/client'
require_relative '../../../support/match_date'

describe Wordpress::Comments::Client do

  let(:client) { Wordpress::Comments::Client.new "http://feeds.mashable.com/Mashable" }

  describe "#initialize" do 

    it "stores a URL" do
      expect(client.url).to eq 'http://feeds.mashable.com/Mashable'
    end

  end

  describe "#parse" do

    let(:xml)  { File.read(File.join('spec', 'fixtures', 'feed.xml')) }

    let(:comments) { client.parse xml }
    let(:comment) { comments.first }

    it "extracts the link" do
      link = 'http://feeds.mashable.com/~r/Mashable/~3/-CPJ_9UROeY/'
      expect(comment[:link]).to eq link
    end

    it "extracts the title" do 
      title = "First 'Zelda: Breath of the Wild' add-on is huge, brings back Tingle"
      expect(comment[:title]).to eq title
    end

    it "extacts the commenter name" do
      expect(comment[:commenter]).to eq "Adam Rosenberg"
    end

    it "extracts the date" do 
      expect(comment[:date].year).to eq 2017
    end

    it "extracts the date(redux)" do 
      expect(comment[:date]).to match_date '2017-05-02'
    end

    it "NEGATED - extracts the date(redux)" do 
      expect(comment[:date]).not_to match_date '2017-05-18'
    end

  end

end
