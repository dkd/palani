require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UsersController do
  
  before(:each) do
    login_admin
  end
  
  describe "actions" do
    
    before(:all) do
      UserGroup.find_or_create_by_name "Administrators"
    end
    
    describe "new" do
      
      it "should be accessible, if we are authenticated" do
        get :new
        response.should be_success
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :new
        response.should_not be_success
      end
      
    end
    
    describe "create" do
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        post :create
        response.should_not be_success
      end
      
    end
    
    describe "edit" do
      
      before(:all) do
        @user = Factory.create :user
      end
      
      after(:all) do
        @user.destroy
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :edit, :id => @user.id
        response.should_not be_success
      end
      
      it "should be accessible, if we are authenticated" do
        get :edit, :id => @user.id
        response.should be_success
      end
      
      it "should display the user having the id that is used as parameter" do
        get :edit, :id => @user.id
        controller.send(:instance_variable_get, :@user).id.should eql @user.id
      end
      
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
      
      it "should render the index partial" do
        get :index
        controller.send(:instance_variable_get, :@partial_file).should eql "admin/users/index"
      end
      
      context ".json" do
        
        before(:each) do
          get :index, :format => "json"
          @users = User.grid_data
          @users.each { |u| u[:actions] = u.actions }
        end
        
        it "should render the grid_data of User" do
          controller.send(:instance_variable_get, :@users).should == @users
        end
        
        it "should render valid json" do
          response.body.should == { :root => @users }.to_json
        end
        
      end
      
    end
    
    describe "destroy" do
      
      before(:each) do
        @user = Factory.create :user
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        delete :destroy, :id => @user.id
        response.should_not be_success
      end
      
      it "should be accessible, if we are authenticated" do
        delete :destroy, :id => @user.id
        response.should be_success
      end
      
    end
    
  end

end
