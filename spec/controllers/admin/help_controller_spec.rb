require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::HelpController do

  before(:each) do
    login_admin
  end

  describe "actions" do
  
    describe "index" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :index
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :index
        response.should be_success
      end
      
      it "should render the index view" do
        get :index
        response.should render_template("index")
      end
      
    end
    
    describe "community" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :community
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :faq
        response.should be_success
      end
      
      it "should render the community view" do
        get :community
        response.should render_template("community")
      end
    
    end
    
    describe "faq" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :faq
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :faq
        response.should be_success
      end
      
      it "should render the community view" do
        get :faq
        response.should render_template("faq")
      end
      
      it "should have at least one question"
      
    end
  
  end
  
end
