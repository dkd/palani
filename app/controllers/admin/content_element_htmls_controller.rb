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
      @page = @content_element.page
      @template_part_id = @content_element.template_part_id
      render :update do |page|
        page['notifications'].replace_html render_notifications
        page['middle_content'].replace_html :partial => "admin_pages_show"
      end
    else
      flash[:error] = 'check_your_input'
      render :update do |page|
        page['notifications'].replace_html render_notifications
        page['middle_content'].replace_html :partial => "edit"
      end
    end
  end
  
  # DELETE /admin/pages/:page_id/content_element_htmls/:id                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    @content_element.content_element.destroy
    @page = @content_element.page
    @content_element.destroy
    @template_part_id = @content_element.template_part_id
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