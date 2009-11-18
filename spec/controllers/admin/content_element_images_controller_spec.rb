require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementImagesController do

  before(:each) do
    controller.stub!(:render).and_return(nil)
    @page = mock_model(Page, :content_elements => [])
    @content_element = mock_model(ContentElement, :page => @page)
    @content_element_image = mock_model(ContentElementImage, :content_element => @content_element, :destroy => true)
    ContentElementImage.stub!(:find).and_return(@content_element_image)
    login_admin
  end

  describe "find_element" do
    
    it "should exist" do
      Admin::ContentElementImagesController.filter_chain.find(:find_element).should_not be_nil
    end
    
    it "should find the content element requested" do
      ContentElementImage.should_receive(:find)
      controller.send :find_element
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_element
      controller.send(:instance_variable_get, :@content_element).should equal @content_element_image
    end
    
  end
  
  describe "DELETE /admin/pages/1/content_element_images/1" do
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are authenticated" do
      public_user
      xhr :delete, :destroy, :page_id => 1, :id => 1
      response.should_not be_success
    end
    
  end

end
