require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementHtmlsController do

  before(:each) do
    controller.stub!(:render).and_return(nil)
    @page = mock_model(Page, :content_elements => [])
    @content_element = mock_model(ContentElement, :page => @page, :destroy => true)
    @content_element_html = mock_model(ContentElementHtml, :content_element => @content_element, :destroy => true)
    ContentElementHtml.stub!(:find).and_return(@content_element_html)
    login_admin
  end

  describe "find_element" do
    
    it "should exist" do
      Admin::ContentElementHtmlsController.filter_chain.find(:find_element).should_not be_nil
    end
    
    it "should find the content element requested" do
      ContentElementHtml.should_receive(:find)
      controller.send :find_element
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_element
      controller.send(:instance_variable_get, :@content_element).should equal @content_element_html
    end
    
  end
  
  describe "GET /admin/pages/1/content_element_htmls/1/edit" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :content_page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :content_page_id => 1, :id => 1
      response.should_not be_success
    end
    
  end
  
  describe "PUT /admin/pages/1/content_element_htmls/1" do
    
    before(:each) do
      @content_element_html.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :content_page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :content_page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should update the attributes of the content element requested" do
      @content_element_html.should_receive(:update_attributes)
      xhr :put, :update, :content_page_id => 1, :id => 1
    end
    
    it "should add /added_succesfully/ as flash, if the image got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :content_page_id => 1, :id => 1
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the image did not get saved" do
      @content_element_html.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :content_page_id => 1, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "DELETE /admin/pages/1/content_element_htmls/1" do
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :content_page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :delete, :destroy, :content_page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should delete the content element requested" do
      @content_element_html.should_receive(:destroy)
      xhr :delete, :destroy, :content_page_id => 1, :id => 1
    end
    
  end

end