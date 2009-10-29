require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::PagesController do

  before(:each) do
    login_admin
  end
  
  describe "actions" do
    
    describe "index" do
      
      it "should be accessible when logged in" do
        get :index
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        get :index
        response.should_not be_success
      end
      
      it "should render the index template" do
        get :index
        response.should render_template "index"
      end
      
      it "should render the index partial" do
        controller.send :index
        controller.send(:instance_variable_get, :@partial_file).should eql "index"
      end
      
    end
    
    describe "new" do
      
      before(:all) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        get :new, :id => @page.id   
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        get :new, :id => @page.id
        response.should_not be_success
      end
      
      it "should create a valid page" do
        get :new, :id => @page.id
        controller.send(:instance_variable_get, :@page).should be_valid
      end
      
    end
    
    describe "show" do
      
      before(:all) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        get :show, :id => @page.id
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        get :show, :id => @page.id
        response.should_not be_success
      end
      
      it "should render the show partial" do
        get :show, :id => @page.id
        controller.send(:instance_variable_get, :@partial_file).should eql "show"
      end
      
      it "should render the page having the id send as parameter" do
        get :show, :id => @page.id
        controller.send(:instance_variable_get, :@page).id.should eql @page.id
      end
      
    end
    
    describe "create" do
      
      before(:all) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        post :create, :drop_id => @page.id, :position => "append"
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        post :create, :drop_id => @page.id, :position => "append"
        response.should_not be_success
      end
      
      it "should create a valid page" do
        post :create, :drop_id => @page.id, :position => "append"
        controller.send(:instance_variable_get, :@page).should be_valid
      end
      
      it "should create a ContentPage" do
        post :create, :drop_id => @page.id, :position => "append"
        controller.send(:instance_variable_get, :@page).should be_a ContentPage
      end
      
    end
    
    describe "destroy" do
      
      before(:each) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        delete :destroy, :id => @page.id
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        delete :destroy, :id => @page.id
        response.should_not be_success
      end
      
    end
    
    describe "render_type_settings" do
      
      before(:each) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        get :render_type_settings, :id => @page.id, :type => @page.type
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        get :render_type_settings, :id => @page.id, :type => @page.type
        response.should_not be_success
      end
      
    end
    
    describe "move" do
      
      before(:each) do
        @drag_page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
        @drop_page = Page.create :title => "test 2", :sorting => 1, :type => "ContentPage"
      end
      
      it "should be accessible when logged in" do
        get :move, :drag_id => @drag_page.id, :drop_id => @drop_page.id, :position => "append"
        response.should be_success
      end
      
      it "should not be accessible when not logged in" do
        public_user
        get :move, :drag_id => @drag_page.id, :drop_id => @drop_page.id, :position => "append"
        response.should_not be_success
      end
      
      it "should move a page" do
        get :move, :drag_id => @drag_page.id, :drop_id => @drop_page.id, :position => "append"
        controller.send(:instance_variable_get, :@page).parent_id.should_not eql @drag_page.parent_id
      end
      
    end
    
  end

end
