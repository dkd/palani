class Admin::ContentElementTextsController < Admin::ContentElementsController

  # GET /admin/pages/:page_id/content_element_texts/:id/edit                AJAX
  #-----------------------------------------------------------------------------
  def edit
    @content_element = ContentElementText.find(params[:id])
    @page = @content_element.page
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_text/edit"
    end
  end
  
end