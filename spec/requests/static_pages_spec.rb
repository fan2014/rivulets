require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    it "should have the content 'Rivulets'" do
      
      visit root_path
      page.should have_content('Rivulets')
    end
  end
  
  # it "should have the right links on the layout" do
  #   visit root_path
  #   click_link "Rivulets"
  #   page.should have_selector 'h1', text: 'Rivulets'
  # end
end
