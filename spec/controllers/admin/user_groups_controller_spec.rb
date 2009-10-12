require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UserGroupsController do

  describe "actions" do
    
    before(:each) do
      login_admin
    end
    
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
    
    describe "new" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :new
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :new
        response.should be_success
      end
      
      it "should render the index view" do
        get :new
        response.should render_template("index")
      end
      
    end
    
    describe "edit" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :edit
        response.should_not be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        get :edit
        response.should be_success
      end
      
      it "should render the index template(with edit partial)" do
        get :edit
        response.should render_template("index")
      end
      
    end
    
  end

end
