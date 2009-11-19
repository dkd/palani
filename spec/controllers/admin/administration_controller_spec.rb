require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::AdministrationController do

  before(:each) do
    login_admin
  end
  
  describe "setup" do
  
    it "should exist" do
      Admin::AdministrationController.filter_chain.find(:setup).should_not be_nil
    end
    
    it "should set the current user as user" do
      controller.send :setup
      controller.send(:instance_variable_get, :@user).should_not be_nil
    end
    
    it "should a partial" do
      controller.send :setup
      controller.send(:instance_variable_get, :@partial_file).should_not be_nil
    end
    
    it "should define edit_own_profile as partial" do
      controller.send :setup
      controller.send(:instance_variable_get, :@partial_file).should eql "edit_own_profile"
    end
  
  end
  
  describe "PUT /admin/administration/update_profile" do
    
    before(:each) do
      @user = mock_model(User, :id => 1, :backend_language => "en", :update_attributes => true)
      controller.stub!(:current_user).and_return(@user)
    end
    
    it "should be accessible, if we are authenticated" do
      put :update_profile, :user => { :username => "Test" }
      response.should be_redirect
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      put :update_profile, :user => { :username => "Test" }
      response.should_not be_success
    end
    
    it "should update the attributes" do
      @user.should_receive(:update_attributes)
      put :update_profile, :user => { :username => "Test" }
    end
    
    it "should redirect to edit_profile_admin_administration_path, if everything is okay" do
      put :update_profile, :user => { :username => "Test" }
      response.should redirect_to edit_profile_admin_administration_path
    end
    
    it "should render edit_profile, if anything went wront" do
      @user = mock_model(User, :id => 1, :backend_language => "en", :update_attributes => false)
      controller.stub!(:current_user).and_return(@user)
      put :update_profile, :user => { :username => "Test" }
      response.should render_template "edit_profile"
    end
    
  end
  
  describe "GET /admin/administration/edit_profile" do
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      get :edit_profile, :format => "html"
      response.should_not be_success
    end
    
    it "should be accessible as html" do
      get :edit_profile, :format => "html"
      response.should be_success
    end
    
  end
  
  describe "GET /admin/administration" do
    
    it "should be accessible, if we are authenticated" do
      get :index
      response.should be_redirect
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      get :index
      response.should_not be_success
    end
    
    it "should redirect to admin_users_path" do
      get :index
      response.should redirect_to admin_users_path
    end
    
  end

end
