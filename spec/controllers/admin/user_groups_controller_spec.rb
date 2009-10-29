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
      
      it "should be accessible, if we are authenticated" do
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
      
      it "should be accessible, if we are authenticated" do
        get :new
        response.should be_success
      end
      
      it "should render the new view" do
        get :new
        response.should render_template("new")
      end
      
    end
    
    describe "edit" do
      
      before(:all) do
        @user_group = UserGroup.find_or_create_by_name "Test"
      end
      
      it "should be accessible, if we are authenticated" do
        get :edit, :id => @user_group.id
        response.should be_success
      end
      
      it "should render the edit view" do
        get :edit, :id => @user_group.id
        response.should render_template("edit")
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :edit, :id => @user_group.id
        response.should_not be_success
      end
      
    end
    
    describe "destroy" do
      
      before(:all) do
        @user_group = UserGroup.find_or_create_by_name "Test"
      end
      
      it "should be accessible, if we are authenticated" do
        delete :destroy, :id => @user_group.id
        response.should be_success
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        delete :destroy, :id => @user_group.id
        response.should_not be_success
      end
      
    end
    
  end

end
