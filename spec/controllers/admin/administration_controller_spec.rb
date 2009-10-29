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

  describe "actions" do
    
    describe "edit_profile" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :edit_profile
        response.should_not be_success
      end
      
      it "should be accessible, if we are authenticated" do
        get :edit_profile
        response.should be_success
      end
      
      it "should render the index view" do
        get :edit_profile
        response.should render_template("edit_profile")
      end
      
    end
    
    describe "index" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :index
        response.should_not be_success
      end
      
      it "should redirect to the users path" do
        get :index
        response.should redirect_to admin_users_path
      end
      
    end
    
  end

end
