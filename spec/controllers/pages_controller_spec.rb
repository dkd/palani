require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(RAILS_ROOT + '/lib/palani/rendering/exceptions')

describe PagesController do

  before(:each) do
    public_user
  end

  describe "GET /" do
    
    context "valid page url" do
      
      it "should be accessible without any authorization" do
        @page = mock_model(Page, :title => "Test")
        Page.stub!(:find_by_url).and_return(@page)
        get :show, :url => ["Test"]
        response.should be_success
      end

      it "should look for the page requested" do
        @page = mock_model(Page, :title => "Test")
        Page.stub!(:find_by_url).and_return(@page)
        Page.should_receive(:find_by_url)
        get :show, :url => ["Test"]
      end
      
    end
    
    context "invalid page url" do
      
      it "should raise a PageNotFoundException if the page requested does not exist" do
        lambda{ get :show, :url => ["abcdefghijklmnopqrstuvwyyz123321"] }.should raise_error(Palani::Rendering::NoPageFoundException)
      end
      
    end
    
  end

end