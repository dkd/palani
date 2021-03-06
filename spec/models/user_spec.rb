require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  
  before(:all) do
    @user_group = Factory.build(:user_group, :name => "Administrators 123")
  end
  
  before(:each) do
    @user = Factory.build(:user, :id => 1)
    @user.user_groups << @user_group
  end
  
  describe "named scopes" do
    
    it "should have a named scope called `grid_data`"
    
  end
  
  describe "actions" do
    
    it "should return anything" do
      @user.actions.should_not be_nil
    end
    
    it "should return the edit icon" do
      @user.actions.should match(/[icons\/edit.png]/)
    end
    
    it "should return the delete icon" do
      @user.actions.should match(/[icons\/delete.png]/)
    end
    
  end
  
  describe "validations" do
    
    it "should be valid with a username, a set backend language, a password and a salt" do
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
    
    it "should not be valid without a backend language" do
      @user.backend_language = ""
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

    it "should not have an email adress without a @" do
      @user.email = "hallo123"
      @user.should_not be_valid
    end
    
    it "should not have an email adress without a tld" do
      @user.email = "test@testing"
      @user.should_not be_valid
      
    end
    
    it "should not have an email adress without a host" do
      @user.email = "test@.de"
      @user.should_not be_valid
    end
    
  end
  
end