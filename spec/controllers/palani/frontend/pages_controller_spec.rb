require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')
require File.expand_path(RAILS_ROOT + '/lib/palani/rendering/exceptions')

describe Palani::Frontend::PagesController do

  before(:each) do
    public_user
  end

  describe "GET /" do
    
    context "valid page url" do
      
      before(:each) do
        @frontend_template = mock_model(PageTemplate, :code => "<html></html>")
        @page = mock_model(Page, :title => "Test", :template => @frontend_template, :hidden => false)
        Page.stub!(:find_by_path).and_return(@page)
      end
      
      it "should be accessible without any authorization" do
        get :show, :url => ["Test"]
        response.should be_success
      end

      it "should look for the page requested" do
        Page.should_receive(:find_by_path)
        get :show, :url => ["Test"]
      end
      
    end
    
    context "invalid page url" do
      
      it "should raise a PageNotFoundException if the page requested does not exist" do
        lambda{ get :show, :url => ["abcdefghijklmnopqrstuvwyyz123321"] }.should raise_error(Palani::Rendering::NoPageFoundException)
      end
      
    end
    
    context "no template"
    
  end

end