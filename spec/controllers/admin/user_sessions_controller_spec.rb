require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UserSessionsController do

  describe "valid user" do
    
    before do
      login_admin
    end
    
    it "should redirect, if we call the root page" do
      get :new
      response.should be_redirect
    end
    
    it "should redirect to the content view page, if we call the root page" do
      get :new
      response.should redirect_to admin_pages_path
    end
    
  end
  
  describe "invalid user" do
    
    before do
      public_user
    end
    
    it "should not redirect, if we call the root page" do
      get :new
      response.should be_success
    end
    
    it "should show the login page, if we call the root page" do
      get :new
      response.should render_template("login")
    end
    
  end

end
