class Admin::ContentElementHtmlsController < ApplicationController

  before_filter :find_element
  
  # GET /admin/pages/:page_id/content_element_htmls/:id/edit                AJAX
  #-----------------------------------------------------------------------------
  def edit
    render :update do |page|
      page['middle_content'].replace_html :partial => "admin/content_elements/types/content_element_html/edit"
    end
  end
  
  # PUT /admin/pages/:page_id/content_element_htmls/:id                    AJAX
  #-----------------------------------------------------------------------------
  def update
    if @content_element.update_attributes(params[:content_element_html])
      flash[:notice] = 'changes_saved_succesfully'
      @page = @content_element.content_element.page
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
  
  # DELETE /admin/pages/:page_id/content_element_htmls/:id                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    @content_element.content_element.destroy
    @page = @content_element.content_element.page
    @content_elements = @page.content_elements
    @content_element.destroy
    flash.now[:notice] = 'deleted_succesfully'
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => "admin/pages/show"
    end
  end
  
  
  protected
  
  def find_element
    @content_element = ContentElementHtml.find(params[:id])
  end

end