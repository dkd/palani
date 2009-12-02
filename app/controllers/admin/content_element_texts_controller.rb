class Admin::ContentElementTextsController < Admin::ContentElementsController
  
  before_filter :find_element

  # GET /admin/pages/:page_id/content_element_texts/:id/edit                AJAX
  #-----------------------------------------------------------------------------
  def edit
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_text/edit"
    end
  end
  
  # PUT /admin/pages/:page_id/content_element_texts/:id                         AJAX
  #-----------------------------------------------------------------------------
  def update
    if @content_element.update_attributes(params[:content_element_text])
      flash[:notice] = 'changes_saved_succesfully'
      @page = @content_element.page
      @partial_file = "admin/pages/show"
      @template_part_id = @content_element.template_part_id
    else
      flash.now[:error] = 'check_your_input'
      @partial_file = "edit"
    end
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
  # DELETE /admin/pages/:page_id/content_element_texts/:id                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    @page = @content_element.page
    @template_part_id = @content_element.template_part_id
    @content_element.destroy
    flash.now[:notice] = 'deleted_succesfully'
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => "admin/pages/show"
    end
  end
  
  protected
  
  def find_element
    @content_element = ContentElementText.find(params[:id])
  end
  
end