require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::PagesController do
  
  describe "actions" do
    
    describe "index" do
      
      it "should render the index template"
      
    end
    
    describe "tree" do
      
      it "should render json code"
      it "should return pages"
      
    end
    
    describe "refresh" do
      
      it "should update the tree"
      
    end
    
    describe "create" do
      
      it "should create a new page"
      it "should render json code"
      it "should return the new page"
      
    end
    
    describe "destroy" do
      
      it "should delete a page"
      it "should not delete the page physically"
      it "should render json code"
      
    end
    
    describe "copy" do
      
      it "should copy a page to a new place"
      it "should not move the page"
      it "should render nothing"
      
    end
    
    describe "move" do
      
      it "should move a page to a new place"
      it "should render nothing"
      
    end
    
  end

end
