class Admin::PagesController < ApplicationController
  
  def index
    @partial_file = "index"
  end
  
  def show
    @partial_file = "show"
    @page = Page.find(params[:id])
    respond_to do |format|
      format.html {
        render :action => :index
      }
      format.js {
        render :update do |page|
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
    end
  end
  
  def new
    @partial_file = "new"
    respond_to do |format|
      format.html {
        render :action => :index
      }
      format.js {
        render :update do |page|
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
    end
  end
  
  # if no position is given, or position is not above or append, the node will be moved below
  def create
    page = ContentPage.new :title => t("new_page")
    drop_page = Page.find(params[:drop_id])
    page.parent_id = drop_page.parent_id
    
    case params[:position]
      when "above"
        page.update_sorting drop_page
      when "append"
        page.parent_id = params[:drop_id]
      else
        page.update_sorting drop_page, true
    end
    
    page.sorting ||= 1
    page.save
    
    render :json => { :text => page.title, :id => page.id, :icon => page.icon, :cls => page.type, :leaf => false, :expanded => true, :allowDrag => true, :allowDrop => true, :draggable => true  }
  end
  
  def destroy
    page = Page.find(params[:id])
    page.delete
    
    render :json => { :deleted => true }
  end
  
  # if no position is given, or position is not above or append, the node will be moved below
  def move
    page = Page.find(params[:drag_id])
    drop_page = Page.find(params[:drop_id])
    page.update_attributes :parent_id => drop_page.parent_id
    
    case params[:position]
      when "above"
        page.update_sorting drop_page
      when "append"
        page.update_attributes :parent_id => drop_page.id
      else
        page.update_sorting drop_page, true
    end
    
    render :json => { :moved => true }
  end
  
end