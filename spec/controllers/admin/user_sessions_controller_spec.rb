require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::UserSessionsController do

  describe "set_lockdown_values" do
    
    it "should exist" do
      Admin::UserSessionsController.filter_chain.find(:set_lockdown_values).should_not be_nil
    end
    
  end

  describe "GET /admin/user_sessions/new" do
    
    context "being logged in" do
      
      before(:each) do
        login_admin
      end
      
      it "should redirect to the admin_pages_path" do
        get :new
        response.should redirect_to admin_pages_path
      end
      
    end
    
    context "without being logged in" do
      
      it "should be accessible" do
        get :new
        response.should be_success
      end

      it "should render the login template" do
        get :new
        response.should render_template("admin/user_sessions/_login")
      end
      
    end
    
  end
  
  describe "POST /admin/user_sessions" do
    
    before(:each) do
      @user = mock_model(User, :backend_language => "en")
      @user_session = mock_model(UserSession, :user => true, :persisting? => true, :record => @user)
      @user_session.stub!(:save).and_return(true)
      @user_session.stub!(:priority_record=)
      controller.stub!(:set_lockdown_values)
    end
    
    context "being logged in" do
      
      before(:each) do
        login_admin
      end
      
      it "should redirect to the admin_pages_path" do
        post :create
        response.should redirect_to admin_pages_path
      end
      
    end
    
    context "without being logged in" do
      
      before(:each) do
        UserSession.stub!(:new).and_return(@user_session)
        public_user
      end
      
      it "should create a new user session" do
        UserSession.should_receive(:new)
        post :create
      end
      
      context "the record got saved" do
        
        it "should redirect to the admin_pages_path" do
          post :create
          response.should redirect_to admin_pages_path
        end
        
      end
      
    end
    
  end
  
  describe "DELETE /admin/user_sessions/1" do
    
    before(:each) do
      login_admin
    end
    
    it "should delete the current user session" do
      @user_session.should_receive(:destroy)
      delete :destroy, :id => 1
    end
    
  end

end