require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  
  before(:all) do
    @user_group = UserGroup.new( :name => "Administrators 123"  )
  end
  
  before(:each) do
    @user = User.new( :username => "testuser", :password => "test", :password_confirmation => "test", :email => "test@test321123.de",
                      :backend_language => "en")
    @user.user_groups << @user_group
  end
  
  it "should belong to at least one usergroup" do
    @user.user_groups.should_not be_empty
  end
  
  it "should not have no backend language" do
    @user.backend_language.should_not be_nil
  end
  
  describe "named scopes" do
    
    it "should have a named scope called deleted"
    it "should have a named scope called grid_data"
    
  end
  
  describe "validations" do
    
    it "should be valid with a username, a password and a salt" do
      @user.should be_valid
    end

    it "should not be valid without a username" do
      @user.username = ""
      @user.should_not be_valid
    end
    
    it "should not be valid without a password" do
      @user.password = ""
      @user.password_confirmation = ""
      @user.should_not be_valid
    end
    
    it "should have a password and the correct confirmation" do
      @user.should be_valid
      @user.password = "another_test"
      @user.should_not be_valid
    end

    it "should have a valid email adress" do
      @user.email = "test@test321123.de"
      @user.should be_valid
    end

    it "should have no invalid email adress" do
      @user.email = "hallo123"
      @user.should_not be_valid
      @user.email = "test@testing"
      @user.should_not be_valid
      @user.email = "test@.de"
      @user.should_not be_valid
    end
    
  end
  
end