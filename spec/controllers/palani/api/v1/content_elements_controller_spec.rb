require File.expand_path(File.dirname(__FILE__) + '/../../../../spec_helper')
require File.expand_path(RAILS_ROOT + '/lib/palani/api/exceptions')

describe Palani::Api::V1::ContentElementsController do
  
  before(:each) do
    @page = mock_model(Page)
    @content_element = mock_model(ContentElement)
    @content_element.stub!(:to_json).and_return({})
    @content_element.stub!(:to_xml).and_return({})
    ContentElement.stub!(:find_by_page_id_and_id).and_return(@content_element)
    login_admin
  end
  
  describe "find_content_element" do
    
    it "should find the page requested" do
      ContentElement.should_receive(:find_by_page_id_and_id)
      controller.send :find_content_element
    end
    
    it "should raise a Palani::Api::ContentElementNotFoundException if the page or the content element requested does not exist" do
      ContentElement.stub!(:find_by_page_id_and_id).and_return(nil)
      lambda { controller.send :find_content_element }.should raise_error(Palani::Api::ContentElementNotFoundException)
    end
    
  end
  
  describe "index" do
    
    before(:each) do
      @page.stub!(:content_elements).and_return([])
      Page.stub!(:find).and_return(@page)
    end
    
    describe "GET /palani/api/pages/1/content_elements.json" do

      it "should render all content elements of the page requested" do
        @page.should_receive(:content_elements)
        get :index, :page_id => 1, :format => "json"
      end

    end
    
    describe "GET /palani/api/pages/1/content_elements.xml" do

      it "should render all content elements of the page requested" do
        @page.should_receive(:content_elements)
        get :index, :page_id => 1, :format => "xml"
      end

    end
    
  end
  
  describe "show" do
    
    describe "GET /palani/api/pages/1/content_elements/1.json" do
      
      it "should render the content element requested" do
        ContentElement.should_receive(:find_by_page_id_and_id)
        get :show, :page_id => 1, :id => 1, :format => "json"
      end

      it "should assign the found content element for the view" do
        get :show, :page_id => 1, :id => 1, :format => "json"
        assigns[:content_element].should equal @content_element
      end
      
    end
    
    describe "GET /palani/api/pages/1/content_elements/1.xml" do
      
      it "should render the content element requested" do
        ContentElement.should_receive(:find_by_page_id_and_id)
        get :show, :page_id => 1, :id => 1, :format => "xml"
      end

      it "should assign the found content element for the view" do
        get :show, :page_id => 1, :id => 1, :format => "xml"
        assigns[:content_element].should equal @content_element
      end

    end
    
  end
  
  describe "destroy" do
    
    before(:each) do
      @content_element.stub!(:destroy)
    end
    
    describe "DELETE /palani/api/pages/1/content_elements/1.json" do

      it "should destroy the page requested" do
        @content_element.should_receive(:destroy)
        delete :destroy, :page_id => 1, :id => 1, :format => "json"
      end

      it "should send HTTP Status 200" do
        delete :destroy, :page_id => 1, :id => 1, :format => "json"
        response.should be_success
      end

    end

    describe "DELETE /palani/api/pages/1/content_elements/1.xml" do

      it "should destroy the page requested" do
        @content_element.should_receive(:destroy)
        delete :destroy, :page_id => 1, :id => 1, :format => "xml"
      end

      it "should send HTTP Status 200" do
        delete :destroy, :page_id => 1, :id => 1, :format => "xml"
        response.should be_success
      end

    end
    
  end

end