class Admin::PagesController < ApplicationController

  # GET /admin/pages
  #-----------------------------------------------------------------------------
  def index
    @partial_file = "index"
  end
  
  # GET /admin/pages/:id                                                    AJAX
  #-----------------------------------------------------------------------------
  def show
    @partial_file = "show"
    @page = Page.find(params[:id])
    render :update do |page|
      page['middle_content'].replace_html :partial => @partial_file
    end
  end

  # GET /admin/pages/new                                                    AJAX
  #-----------------------------------------------------------------------------
  def new
    @page = Page.new :title => t("new_page")
    @page.update_sorting Page.find(params[:id]), "append"
    @page.save
    
    render :update do |page|
      page['middle_content'].replace_html :partial => "new"
    end
  end
  
  # if no position is given or position is not above or append, the node will 
  # be moved below
  # 
  # POST /admin/pages                                                       AJAX
  #-----------------------------------------------------------------------------
  def create
    page = ContentPage.new :title => t("new_page")
    page.update_sorting Page.find(params[:drop_id]), params[:position]
    
    render :json => { :text => page.title, :id => page.id, :icon => page.icon, 
                      :cls => page.type, :leaf => false, :expanded => true, :allowDrag => true, 
                      :allowDrop => true, :draggable => true  }
  end
  
  # PUT /admin/pages/:id                                                    AJAX
  #-----------------------------------------------------------------------------
  def update
    @page = Page.find(params[:id])
    
    if @page.update_attributes(params[:page])
      flash.now[:notice] = 'changes_saved_succesfully'
      render :update do |page|
        page['notifications'].replace_html render_notifications
        page['middle_content'].replace_html :partial => "administration", 
                                            :locals => { :collapsed => true }
      end
    else
      flash.now[:error] = 'check_your_input'
      render :update do |page|
        page['notifications'].replace_html render_notifications
        page['middle_content'].replace_html :partial => "administration", 
                                            :locals => { :collapsed => false }
      end
    end
  end
  
  # PUT /admin/pages/:id/update_new                                         AJAX
  #-----------------------------------------------------------------------------
  def update_new
    @page = Page.find(params[:id])
    
    if @page.update_attributes(params[:page])
      flash.now[:notice] = 'added_succesfully'
      @partial_file = "show"
    else
      flash.now[:error] = 'check_your_input'
      @partial_file = "new"
    end
    
    render :update do |page|
      page['middle_content'].replace_html :partial => @partial_file
    end
  end
  
  # DELETE /admin/pages/:id                                                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    page = Page.find(params[:id])
    page.delete
    
    render :json => { :deleted => true }
  end
  
  # GET /admin/pages/render_type_settings                                   AJAX
  #-----------------------------------------------------------------------------
  def render_type_settings
    @page = Page.find(params[:id])
    @page.update_attributes :dummy_type => params[:type]
    @page = Page.find(params[:id])
    render :update do |page|
      page['type_settings'].replace_html :partial => "/admin/pages/edit/settings", 
                                         :locals => { :fields => @page.edit_fields, :type => @page.type.underscore }
      page['simple_tabs_javascript'].replace_html :partial => "/admin/pages/edit/simple_tabs"
    end
  end
  
  # if no position is given, or position is not above or append, the node will 
  # be moved below
  #
  # GET /admin/pages/move                                                   AJAX
  #-----------------------------------------------------------------------------
  def move
    page = Page.find(params[:drag_id])
    page.update_sorting Page.find(params[:drop_id]), params[:position]
    
    render :json => { :moved => true }
  end
  
end