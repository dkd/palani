class Admin::ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    
    if @image.save
      flash.now[:notice] = "added_succesfully"
    else
      flash.now[:error] = "uploading_failed"
    end
    
    responds_to_parent do
      render :update do |page|
        page['image_upload'].replace_html :partial => "admin/content_elements/types/content_element_image/upload"
        page['notifications'].replace_html render_notifications(true)
        page['image_browser'].replace_html :partial => "admin/content_elements/types/content_element_image/images"
      end
    end
    
  end
  
end
