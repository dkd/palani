require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UsersController do
  
  before(:each) do
    @user = mock_model(User, :save => true)
    User.stub!(:find).and_return(@user)
    controller.stub!(:render).with(:update)
    login_admin
  end
  
  describe "find_user" do
    
    it "should exist" do
      Admin::UsersController.filter_chain.find(:find_user).should_not be_nil
    end
    
    it "should find the content element requested" do
      User.should_receive(:find)
      controller.send :find_user
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_user
      controller.send(:instance_variable_get, :@user).should equal @user
    end
    
  end
  
  describe "actionize" do
    
    before(:each) do
      @user.stub!(:actions).and_return("Test actions")
      @user.stub!(:[]=).with(:actions, "Test actions")
      @user.stub!(:[]).with(:actions).and_return("Test actions")
      @users = [@user]
    end
    
    it "should return actionized actions" do
      controller.send :actionize, @users
      @users.each { |u| u[:actions].should eql @user.actions }
    end
    
  end
  
  describe "GET /admin/users/new" do
    
    before(:each) do
      User.stub!(:new).and_return(@user)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :new
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :new
      response.should_not be_success
    end
    
    it "should create a new User" do
      User.should_receive(:new).and_return(@user)
      xhr :get, :new
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :new
    end
    
  end
  
  describe "POST /admin/users" do
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create
      response.should_not be_success
    end
    
    it "should create a new User" do
      User.should_receive(:new).and_return(@user)
      xhr :post, :create
    end
    
  end

end
