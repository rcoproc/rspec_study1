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
    before(:each) { visit root_path }

    scenario "show a list of blogs" do
      pending "Need to write unit tests and Blog model first."
      expect(page).to have_selector 'li a', text: 'Mashable'
    end

  end

end
