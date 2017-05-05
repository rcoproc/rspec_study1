require_relative '../support/network'
require 'rails_helper'
# require 'spec_helper'

feature "Home Page" do

  context "empty database"do 

    before(:each) { visit root_path }

    scenario "GET /" do 
      expect(page.status_code).to be(200)
    end

    scenario "populates title" do
      expect(page).to have_title 'Comments Dashboard'
    end

    describe "masthead" do 

      scenario "displays title" do 
        expect(page).to have_selector 'div#title h1', text: 'Comments Dashboard'
      end

      scenario "displays subtitle" do 
        expect(page).to have_selector 'h2', text: 'Read comments from your favorite blog!'
      end

    end

  end

  context "populate database" do

    fixtures :blogs

    before(:each) { visit root_path }

    scenario "show a list of blogs" do
      # pending "Need to write unit tests and Blog model first."
      # save_and_open_page
      expect(page).to have_selector 'li a', text: 'Mashable'
    end

    describe "POST/blogs" do

      before :each do 
        stub_network


        visit "/"
        fill_in "blog_title", with: "Example"
        fill_in "blog_comments_feed_url", with: "http://example.com/comments/feed"
        # save_and_open_page
        click_on "Create"

      end

      let(:blog) { Blog.find_by_permalink 'example' }

      scenario "create a valid record" do
        expect(blog).to be_valid
      end

      scenario "preload 30 comments" do 
        expect(blog.comments.length).to eq 30
      end

    end

  end

end
