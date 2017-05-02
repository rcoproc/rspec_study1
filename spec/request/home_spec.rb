require 'rails_helper'
require 'spec_helper'

feature "Home Page" do
  before(:each) { visit root_path }
  scenario "GET /" do 
      page.status_code.should eq(200)
      expect(page).to have_content('Página do blog')
  end
end
