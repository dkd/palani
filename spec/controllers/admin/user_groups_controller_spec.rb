require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UserGroupsController do

  before(:each) do
    @user_group = mock_model(UserGroup)
    UserGroup.stub!(:new).and_return(@user_group)
    UserGroup.stub!(:find).and_return(@user_group)
    login_admin
  end
  
  describe "GET /admin/user_groups" do
    
    it "should be accessible, if we are authenticated" do
      get :index
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      get :index
      response.should_not be_success
    end
    
  end
  
  describe "GET /admin/user_groups.json" do
    
    before(:each) do
      UserGroup.stub!(:active).and_return(@user_group)
      @user_group.stub!(:json_data).and_return(nil)
    end
    
    it "should be accessible, if we are authenticated" do
      get :index, :format => "json"
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      get :index, :format => "json"
      response.should_not be_success
    end
    
    it "should render json data" do
      @user_group.should_receive(:json_data)
      get :index, :format => "json"
    end
    
  end
  
  describe "GET /admin/user_groups/new" do
    
    before(:each) do
      controller.stub!(:render).and_return(nil)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :new
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :new
      response.should_not be_success
    end
    
    it "should create a new usergroup" do
      UserGroup.should_receive(:new)
      xhr :get, :new
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :new
    end
        
  end
  
  describe "POST /admin/user_groups" do
    
    before(:each) do
      @user_group.stub!(:save).and_return(true)
      controller.stub!(:render)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :post, :create
    end
    
    it "should add /added_succesfully/ as flash, if the user group got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :post, :create
      flash.now[:notice].should eql "added_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the user group did not get saved" do
      @user_group.stub!(:save).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :post, :create
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "DELETE /admin/user_groups/1" do
    
    before(:each) do
      @user_group.stub!(:destroy).and_return(:true)
      controller.stub!(:render)
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
    
    it "should delete the user group requested" do
      @user_group.should_receive(:destroy)
      xhr :delete, :destroy, :id => 1
    end
    
  end
  
  describe "GET /admin/user_groups/1/edit" do
    
    before(:each) do
      controller.stub!(:render)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :id => 1
      response.should_not be_success
    end
    
    it "should find the user group requested" do
      UserGroup.should_receive(:find).and_return(@user_group)
      xhr :get, :edit, :id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :edit, :id => 1
    end
    
  end
  
  describe "PUT /admin/user_groups/1" do
    
    before(:each) do
      @user_group.stub!(:update_attributes).and_return(true)
      controller.stub!(:render)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
      response.should_not be_success
    end
    
    it "should update the user group requested" do
      @user_group.should_receive(:update_attributes)
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
    end
    
    it "should add /added_succesfully/ as flash, if the user group got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the user group did not get saved" do
      @user_group.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1, :user_group => { :permission_ids => [] }
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
end
