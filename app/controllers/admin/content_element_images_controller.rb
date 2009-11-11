class Admin::ContentElementImagesController < Admin::ContentElementsController
  
  # GET /admin/pages/:page_id/content_element_images/:id/edit              AJAX
  #-----------------------------------------------------------------------------
  def edit
    @content_element = ContentElementImage.find(params[:id])
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_image/edit"
    end
  end
  
  # PUT /admin/pages/:page_id/content_element_texts/:id                         AJAX
  #-----------------------------------------------------------------------------
  def update
    @content_element = ContentElementImage.find(params[:id])
    if @content_element.update_attributes(params[:content_element_image])
      flash[:notice] = 'changes_saved_succesfully'
      @page = @content_element.page
      @content_elements = @page.content_elements
      @partial_file = "admin/pages/show"
    else
      flash.now[:error] = 'check_your_input'
      @partial_file = "edit"
    end
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
  # DELETE /admin/pages/:page_id/content_element_images/:id                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    @content_element = ContentElementImage.find(params[:id])
    @page = @content_element.page
    @content_elements = @page.content_elements
    @content_element.destroy
    flash.now[:notice] = 'deleted_succesfully'
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => "admin/pages/show"
    end
  end
  
  # GET /admin/content_element_images/:id/add_new_image                     AJAX
  #-----------------------------------------------------------------------------
  def add_new_image
    @content_element = ContentElementImage.find(params[:id])
    @content_element.image_attachments.create
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_image/edit"
    end
  end
  
end