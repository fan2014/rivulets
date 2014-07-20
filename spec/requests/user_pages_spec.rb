require 'spec_helper'

describe "User pages" do
  subject { page }
  # describe "profile page" do
  #   let(:user) { FactoryGirl.create(:user) }
  #   before { visit user_path(user) }
  #   it { should have_content(user.name) }
  # end
  
  describe "sign in" do
    before { visit root_path }
    
    describe "with invalid information" do
      it "should not go to user profile page" do
        click_button "Sign in"
        page.should have_content("Welcome to Rivulets")
      end
    end
    
    describe "with valid information" do
      it "should go to user profile page" do
        fill_in "Name",       with: "Fan Zheng"
        fill_in "Student ID", with: "9037644698"
        click_button "Sign in"
        page.should have_content("Fan Zheng")
      end
    end
      
  end
end
