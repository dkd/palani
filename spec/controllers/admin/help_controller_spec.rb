require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::HelpController do

  before(:each) do
    login_admin
  end

  describe "actions" do
  
    describe "index" do
      
      it "should not be accessible, if we are not authenticated"
      
      it "should be accessible, if we are authenticated"
      
      it "should render the index view"
      
    end
    
    describe "community" do
      
      it "should not be accessible, if we are not authenticated"
      
      it "should be accessible, if we are authenticated"
      
      it "should render the community view"
    
    end
    
    describe "faq" do
      
      it "should not be accessible, if we are not authenticated"
      
      it "should be accessible, if we are authenticated"
      
      it "should render the community view"
      
      it "should have at least one question"
      
    end
  
  end
  
end
