class Admin::ContentElementsController < ApplicationController
  
  # GET /admin/pages/:page_id/content_elements/new                        AJAX
  #----------------------------------------------------------------------------
  def new
    @content_element = ContentElement.create
    @content_element.from_content_element(params[:page], params[:content_element])
    @content_element.save
    @page = Page.find(params[:page])
    flash.now[:notice] = "added_succesfully"
    
    render :update do |page|
      page['notifications'].replace_html render_notifications
      page['middle_content'].replace_html :partial => "edit"
    end
  end
  
  # PUT /admin/pages/:page_id/content_elements/                            AJAX
  #-----------------------------------------------------------------------------
  def update
    @content_element = ContentElement.find(params[:id])
    
    if @content_element.update_attributes(params[:content_element])
      @partial_file = "admin/pages/show"
      @page = Page.find(params[:page_id])
      @content_elements = @page.content_elements.sorted
    else
      @partial_file = "edit"
    end
    
    render :update do |page|
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
  # GET /admin/pages/:page_id/content_elements/render_type_settings        AJAX
  #-----------------------------------------------------------------------------
  def render_type_settings
    @content_element = ContentElement.find(params[:id])
    @content_element.update_attributes :element_type => params[:type]
    @type = Kernel.const_get(params[:type]).find_by_content_element_id(params[:id])
    render :update do |page|
      page['type_settings'].replace_html :partial => "/admin/content_elements/edit/settings", 
                                         :locals => { :fields => @type.edit_fields, 
                                            :type => "content_element[]#{@type.class.to_s.underscore}" }
      page['simple_tabs_javascript'].replace_html :partial => "/admin/content_elements/edit/change_settings"
    end
  end
  
end