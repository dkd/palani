class Admin::ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    
    if @image.save
      flash[:notice] = "added_succesfully"
      responds_to_parent do
        render :update do |page|
          page['notifications'].replace_html render_notifications
          page['image_browser'].replace_html :partial => "admin/content_elements/types/content_element_image/images"
          page['image_upload'].replace_html :partial => "admin/content_elements/types/content_element_image/upload"
        end
      end
    else
      responds_to_parent do
        render :update do |page|
          page['new_image'].replace_html "Bild nicht gespeichert."
        end
      end
    end
    
  end
  
end
