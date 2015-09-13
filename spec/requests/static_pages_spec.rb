require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title, 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                      :text => "Learning Ruby on Rails | Home", :visible => false)
    end
  end


  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Learning Ruby on Rails | Help", :visible => false)
    end
  end

  describe "About Us page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Learning Ruby on Rails | About Us", :visible => false)
    end
  end

end

# require 'rails_helper'
#
# RSpec.describe "StaticPages", type: :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end
