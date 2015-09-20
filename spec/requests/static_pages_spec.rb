require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                  :text => "Ruby on Rails Tutorial Sample App", :visible => false)
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                  :text => "| Home", :visible => false)
    end
  end


  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the base title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                  :text => "Ruby on Rails Tutorial Sample App", :visible => false)
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_selector('title',
                  :text => "| Help", :visible => false)
    end
  end

  describe "About Us page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                  :text => "Ruby on Rails Tutorial Sample App", :visible => false)
    end

    it "should not a custom page title" do
      visit '/static_pages/about'
      page.should_not have_selector('title',
                  :text => "| About Us", :visible => false)
    end
  end


  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                  text: "Ruby on Rails Tutorial Sample App", :visible => false)
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
