require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UserGroup do
  
  before(:each) do
    @user_group = UserGroup.new( :name => "Admins" )
  end
  
  describe "validations" do
    
    it "should be valid having a username" do
      @user_group.should be_valid
    end
    
    it "should not be valid without a username" do
      @user_group.name = ""
      @user_group.should_not be_valid
    end
    
  end
  
  describe "named scopes" do
    
    it "should have a named scope called deleted"
    it "should have a named scope called json_data"
    
  end
  
  describe "all_users" do
    
    it "should return only User objects"
    it "should return only users, that belong to this usergroup"
    
  end
  
end