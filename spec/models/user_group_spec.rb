require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UserGroup do
  
  before(:each) do
    @user_group = UserGroup.create( :name => "Admins" )
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
  
  context "all_users" do
    
    it "should return an Array" do
      @user_group.all_users.should be_an Array
    end
    
    it "should return only User objects" do
      @user_group.all_users.each { |user|
        user.should be_an User
      }
    end
    
    it "should return only users, that belong to this usergroup" do
      @user_group.all_users.each { |user|
        user.user_groups.should include @user_group
      }
    end
    
  end
  
end