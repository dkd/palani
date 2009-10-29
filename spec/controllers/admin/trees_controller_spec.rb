require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::TreesController do

  before(:each) do
    login_admin
  end

  describe "actions" do
    
    describe "refresh" do
      
     it "should not be accessible, if we are not authenticated" do
        public_user
        get :refresh
        response.should_not be_success
      end

      it "should be accessible, if we are authenticated" do
        get :refresh
        response.should be_success
      end
      
    end
    
    describe "tree" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :refresh
        response.should_not be_success
      end

      it "should be accessible, if we are authenticated" do
        get :refresh
        response.should be_success
      end
      
    end
    
  end

end
