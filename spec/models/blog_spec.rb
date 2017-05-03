require 'rails_helper'

RSpec.describe Blog, type: :model do
  let(:blog1) { Blog.new(title: "My Blog", 
                        comments_feed_url: "http://feeds.mashable.com/Mashable") } 

  let(:blog2) { Blog.new(title: "My Blog2", 
                        comments_feed_url: "http://feeds.mashable.com/Mashable") } 

  context 'Validations' do
    it { should validate_presence_of    :title }
    it { should validate_uniqueness_of  :title }

    it { should validate_presence_of    :comments_feed_url }
    # it { should validate_uniqueness_of  :comments_feed_url }


    it { should have_many               :comments }
  end

  describe "attributes" do

    it "save attributes" do 
      blog1.save!
      expect(blog1).to be_valid
    end

  end

  describe "permalink" do

    it "builds from title" do 
      expect(blog1.build_permalink).to eq 'my-blog'
    end

  end

  describe "refresh comments" do 
    
    it "populates comments"  do
      blog2.save!
      blog2.comments.refresh
      expect(blog2.comments.length).to eq 30
      puts  "Comentario: #{blog2.comments.first.title}"
    end

  end

end
