require File.expand_path(File.dirname(__FILE__) + '/../../../../spec_helper')

describe Palani::Api::V1::PagesController do

  before(:each) do
    @page = mock_model(Page, :id => 1)
    @page.stub!(:to_json).and_return({})
    @page.stub!(:to_xml).and_return({})
    Page.stub!(:all).and_return([@page])
    Page.stub!(:find).and_return(@page)
    login_admin
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

end