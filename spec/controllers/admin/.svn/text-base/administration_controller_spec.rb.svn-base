require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::AdministrationController do

  describe "actions" do
    
    before(:each) do
      login_admin
    end
    
    describe "edit_profile" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :edit_profile
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :edit_profile
        response.should be_success
      end
      
      it "should render the index view" do
        get :edit_profile
        response.should render_template("index")
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
