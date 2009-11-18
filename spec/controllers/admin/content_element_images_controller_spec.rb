require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementImagesController do

  before(:each) do
    controller.stub!(:render).and_return(nil)
    @page = mock_model(Page, :content_elements => [])
    @content_element = mock_model(ContentElement, :page => @page, :destroy => true)
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
  
  describe "PUT /admin/pages/1/content_element_texts/1" do
    
    before(:each) do
      @content_element_image.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are authenticated" do
      public_user
      xhr :put, :update, :page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should update the attributes of the content element requested" do
      @content_element_image.should_receive(:update_attributes).and_return(true)
      xhr :put, :update, :page_id => 1, :id => 1
    end
    
    it "should add /added_succesfully/ as flash, if the image got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :page_id => 1, :id => 1
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the image did not get saved" do
      @content_element_image.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :page_id => 1, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "GET /admin/content_element_images/1/add_new_image" do
    
    before(:each) do
      @image_attachment = mock_model(ImageAttachment, :create => true)
      @content_element_image.stub!(:image_attachments).and_return(@image_attachment)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :add_new_image, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are authenticated" do
      public_user
      xhr :get, :add_new_image, :id => 1
      response.should_not be_success
    end
    
    it "should create a new image attachment" do
      @image_attachment.should_receive(:create)
      xhr :get, :add_new_image, :id => 1
    end
    
  end
  
  describe "GET /admin/content_element_images/1/remove_image" do
    
    before(:each) do
      @image_attachment = mock_model(ImageAttachment, :destroy => true)
      ImageAttachment.stub!(:find).and_return(@image_attachment)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :remove_image, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are authenticated" do
      public_user
      xhr :get, :remove_image, :id => 1
      response.should_not be_success
    end
    
    it "should find the image attachment requested" do
      ImageAttachment.should_receive(:find).and_return(@image_attachment)
      xhr :get, :remove_image, :id => 1
    end
    
    it "should destroy the image attachment requested" do
      @image_attachment.should_receive(:destroy)
      xhr :get, :remove_image, :id => 1
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
