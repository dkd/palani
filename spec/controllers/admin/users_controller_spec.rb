require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UsersController do
  
  before(:each) do
    @user = mock_model(User, :save => true)
    User.stub!(:find).and_return(@user)
    User.stub!(:new).and_return(@user)
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
    
    it "should save the new user" do
      @user.should_receive(:save)
      xhr :post, :create
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :post, :create
    end
    
    it "should add /check_your_input/ as flash, if something went wrong" do
      @user.stub!(:save).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :post, :create
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "GET /admin/users/1/edit" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :id => 1
      response.should_not be_success
    end
   
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :edit, :id => 1
    end
    
  end
  
  describe "GET /admin/users" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :index
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :index
      response.should_not be_success
    end
    
    it "should render the partial 'admin/users/index'" do
      xhr :get, :index
      controller.send(:instance_variable_get,:@partial_file).should eql "admin/users/index"
    end
    
    context "json" do
      
      it "should actionize the users" do
        controller.should_receive(:actionize)
        xhr :get, :index, :format => "json"
      end
      
    end
    
  end
  
  describe "PUT /admin/users/1" do
    
    before(:each) do
      @user.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :id => 1
      response.should_not be_success
    end
    
    it "should update the attributes" do
      @user.should_receive(:update_attributes)
      xhr :put, :update, :id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update, :id => 1
    end
    
    it "should add /changes_saved_succesfully/ as flash, if everything is okay" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /check_your_input/ as flash, if anything went wrong" do
      @user.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "DELETE /admin/users/1" do
    
    before(:each) do
      @user.stub!(:destroy)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :delete, :destroy, :id => 1
      response.should_not be_success
    end
    
    it "should destroy the user requested" do
      @user.should_receive(:destroy)
      xhr :delete, :destroy, :id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :delete, :destroy, :id => 1
    end
      
  end

end