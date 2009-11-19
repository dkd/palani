require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::TreesController do

  before(:each) do
    login_admin
  end
  
  describe "POST /admin/trees/tree" do
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :tree
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :tree
      response.should_not be_success
    end
    
  end
  
  describe "GET /admin/trees/refresh" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :refresh
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :refresh
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :refresh
    end
    
  end

end
