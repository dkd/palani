class Admin::ContentElementImagesController < Admin::ContentElementsController
  
  # GET /admin/pages/:page_id/content_element_images/:id/edit              AJAX
  #-----------------------------------------------------------------------------
  def edit
    @content_element = ContentElementImage.find(params[:id])
    @page = @content_element.page
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_image/edit"
    end
  end
  
end
