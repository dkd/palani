require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementImagesController do

  before(:each) do
    login_admin
  end

  describe "actions" do
    
    describe "add_new_image" do
      
      before(:all) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
        @content_element = ContentElement.create :element_type => "ContentElementImage", :page_id => @page.id
        @content_element.create_element_type
        @content_element = ContentElementImage.find_by_content_element_id(@content_element.id)
      end
      
      it "should be accessible, if we are authenticated" do
        get :add_new_image, :id => @content_element.id
        response.should be_success
      end
      
      it "should not be accessible, if we are not authenticated" do
        public_user
        get :add_new_image, :id => @content_element.id
        response.should_not be_success
      end
      
      it "should create a new image" do
        image_count = @content_element.images.length
        get :add_new_image, :id => @content_element.id
        @content_element.images.length.should > image_count
      end
      
    end
    
  end

end