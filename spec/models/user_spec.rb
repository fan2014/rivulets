require 'spec_helper'

describe User do
  
  before { @user =  User.new(name: "Fan", student_id: "1234567890")}
  
  subject { @user }
  
  it { should respond_to(:name) }
  it { should respond_to(:student_id) }
  
  it { should be_valid }
  
  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @user.name = "a"*51 }
    it { should_not be_valid }
  end
  
  describe "when student id is not valid" do
    before { @user.student_id = "1111111111"}
    it {should_not be_valid }
  end
  
  describe "when student id is valid" do
    before { @user.student_id = "1234567890"}
    it { should be_valid }
  end
  

end
