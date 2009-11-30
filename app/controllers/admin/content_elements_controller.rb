class Admin::ContentElementsController < ApplicationController
  
  before_filter :find_element, :only => [:edit, :update, :destroy]
  
  # GET /admin/pages/:page_id/content_elements/new                        AJAX
  #----------------------------------------------------------------------------
  def new
    @content_element = ContentElement.new(:template_part_id => params[:template_part])
    
    render :update do |page|
      page['middle_content'].replace_html :partial => "new"
    end
  end
  
  # POST /admin/pages/:page_id/content_elements/                            AJAX
  #-----------------------------------------------------------------------------
  def create
    @content_element = ContentElement.new(params[:content_element])
    @content_element.from_content_element params[:page_id], params[:content_element_id]
    
    if @content_element.save
      @content_element.create_element_type
      @partial_file = "admin/pages/show"
      @page = Page.find(params[:page_id])
      @content_elements = @page.content_elements.sorted
    else
      @partial_file = "new"
    end
    
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
  # GET /admin/pages/:page_id/content_elements/:id/edit                     AJAX
  #-----------------------------------------------------------------------------
  def edit
    @page = @content_element.page
    render :update do |page|
      page['middle_content'].replace_html :partial => "edit"
    end
  end
  
  # PUT /admin/pages/:page_id/content_elements/:id                         AJAX
  #-----------------------------------------------------------------------------
  def update
    if @content_element.update_attributes(params[:content_element])
      @content_element.create_element_type
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
  
  # DELETE /admin/pages/:page_id/content_elements/:id                      AJAX
  #-----------------------------------------------------------------------------
  def destroy
    @page = @content_element.page
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
    @content_element = ContentElement.find(params[:id])
  end
  
end