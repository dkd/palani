class Admin::ContentElementsController < ApplicationController
  
  # GET /admin/pages/:page_id/content_elements/new                        AJAX
  #----------------------------------------------------------------------------
  def new
    @content_element = ContentElement.new #from_content_element params[:page], params[:content_element]
    render :update do |page|
      page['middle_content'].replace_html :partial => "new"
    end
  end
  
  def create
    @content_element = ContentElement.new(params[:content_element])
    @content_element.from_content_element params[:page_id], params[:content_element_id]
    
    if @content_element.save
      @partial_file = "admin/pages/show"
    else
      @partial_file = "new"
    end
    
    @page = Page.find(params[:page_id])
    @content_elements = @page.content_elements.sorted
    render :update do |page|
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
end