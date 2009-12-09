require File.expand_path(File.dirname(__FILE__) + '/../../../../spec_helper')
require File.expand_path(RAILS_ROOT + '/lib/palani/api/exceptions')

describe Palani::Api::V1::PagesController do

  before(:each) do
    @page = mock_model(Page, :id => 1)
    @page.stub!(:save).and_return(true)
    @page.stub!(:to_json).and_return({})
    @page.stub!(:to_xml).and_return({})
    @page.stub!(:children).and_return([])
    Page.stub!(:all).and_return([@page])
    Page.stub!(:find).and_return(@page)
    Page.stub!(:new).and_return(@page)
    login_admin
  end
  
  describe "POST /palani/api/pages.json" do
    
    it "should create a new page" do
      Page.should_receive(:new).and_return(@page)
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "json"
    end
    
    it "should try to save the page" do
      @page.should_receive(:save)
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "json"
    end
    
    it "should send HTTP Status 201, if the page was created" do
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "json"
      response.should be_success
    end
    
    context "with invalid data" do
      
      before(:each) do
        @page.stub!(:save).and_return(false)
      end
      
      it "should throw a Exception" do
        lambda {
          post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "json"
        }.should raise_error(Palani::Api::InvalidRecordJSONException)
      end
      
      it "should send HTTP Status 400"
      
    end
    
  end
  
  describe "POST /palani/api/pages.xml" do
    
    it "should create a new page" do
      Page.should_receive(:new).and_return(@page)
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "xml"
    end
    
    it "should save the page" do
      @page.should_receive(:save)
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "xml"
    end
    
    it "should send 201 HTTP Status, if the page was created" do
      post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "xml"
      response.should be_success
    end
    
    context "with invalid data" do
      
      before(:each) do
        @page.stub!(:save).and_return(false)
      end
      
      it "should throw a Exception" do
        lambda {
          post :create, :page => { :title => "Testpage", :type => "ContentPage", :sorting => 1 }, :format => "xml"
        }.should raise_error(Palani::Api::InvalidRecordXMLException)
      end
      
      it "should send HTTP Status 400"
      
    end
    
  end
  
  describe "GET /palani/api/pages.json" do
    
    after(:each) do
      get :index, :format => "json"
    end

    it "should render all pages" do
      Page.should_receive(:all).and_return([@page])
    end
    
  end
  
  describe "GET /palani/api/pages.xml" do
    
    after(:each) do
      get :index, :format => "xml"
    end

    it "should render all pages" do
      Page.should_receive(:all).and_return([@page])
    end
    
  end
  
  describe "GET /palani/api/pages/1/children.json" do
    
    after(:each) do
      get :children, :id => 1, :format => "json"
    end

    it "should render all children of the page requested" do
      @page.should_receive(:children)
    end
    
  end
  
  describe "GET /palani/api/pages/1/children.xml" do
    
    after(:each) do
      get :children, :id => 1, :format => "xml"
    end

    it "should render all children of the page requested" do
      @page.should_receive(:children)
    end
    
  end
  
  describe "GET /palani/api/pages/1.json" do
    
    it "should render the page requested" do
      Page.should_receive(:find).and_return(@page)
      get :show, :id => 1, :format => "json"
    end
    
    it "should assign the found page for the view" do
      get :show, :id => 1, :format => "json"
      assigns[:page].should equal @page
    end
    
  end
  
  describe "GET /palani/api/pages/1.xml" do
    
    it "should render the page requested" do
      Page.should_receive(:find).and_return(@page)
      get :show, :id => 1, :format => "xml"
    end
    
    it "should assign the found page for the view" do
      get :show, :id => 1, :format => "xml"
      assigns[:page].should equal @page
    end
    
  end
  
  describe "PUT /palani/api/pages/1.json" do
    
    before(:each) do
      @page.stub!(:update_attributes).and_return(true)
    end
    
    context "with valid data" do
    
      it "should update the attributes of the page requested" do
        @page.should_receive(:update_attributes)
        put :update, :id => 1, :format => "json"
      end
      
      it "should send HTTP Status 200" do
        put :update, :id => 1, :format => "json"
        response.should be_success
      end
    
    end
    
    context "with invalid data" do
      
      before(:each) do
        @page.stub!(:update_attributes).and_return(false)
      end
      
      it "should throw a Exception" do
        lambda {
          put :update, :id => 1, :format => "json"
        }.should raise_error(Palani::Api::InvalidUpdateOfRecordJSONException)
      end
      
      it "should send HTTP Status 400"
      
    end
    
  end
  
  describe "PUT /palani/api/pages/1.xml" do
    
    before(:each) do
      @page.stub!(:update_attributes).and_return(true)
    end
    
    context "with valid data" do
    
      it "should update the attributes of the page requested" do
        @page.should_receive(:update_attributes)
        put :update, :id => 1, :format => "xml"
      end
      
      it "should send HTTP Status 200" do
        put :update, :id => 1, :format => "xml"
        response.should be_success
      end
    
    end
    
    context "with invalid data" do
      
      before(:each) do
        @page.stub!(:update_attributes).and_return(false)
      end
      
      it "should throw a Exception" do
        lambda {
          put :update, :id => 1, :format => "xml"
        }.should raise_error(Palani::Api::InvalidUpdateOfRecordXMLException)
      end
      
      it "should send HTTP Status 400"
      
    end
    
  end
  
  describe "DELETE /palani/api/pages/1.json" do
    
    before(:each) do
      @page.stub!(:destroy)
    end
    
    it "should destroy the page requested" do
      @page.should_receive(:destroy)
      delete :destroy, :id => 1, :format => "json"
    end
      
    it "should send HTTP Status 200" do
      delete :destroy, :id => 1, :format => "json"
      response.should be_success
    end
  
  end
  
  describe "DELETE /palani/api/pages/1.XML" do
    
    before(:each) do
      @page.stub!(:destroy)
    end
    
    it "should destroy the page requested" do
      @page.should_receive(:destroy)
      delete :destroy, :id => 1, :format => "xml"
    end
      
    it "should send HTTP Status 200" do
      delete :destroy, :id => 1, :format => "xml"
      response.should be_success
    end
  
  end

end