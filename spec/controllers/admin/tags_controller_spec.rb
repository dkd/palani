require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::TagsController do

  before(:each) do
    @tag = mock_model(Tag, :name => "tag")
    Tag.stub!(:name_like).and_return([@tag])
    login_admin
  end

  describe "GET /admin/tags" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :index
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :index
      response.should_not be_success
    end
    
    it "should search tags with the query sent" do
      Tag.should_receive(:name_like).with("test")
      xhr :get, :index, :q => "test"
    end
    
  end

end
