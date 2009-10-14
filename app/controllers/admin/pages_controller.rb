class Admin::PagesController < ApplicationController
  
  def index
  end
  
  def show
    respond_to do |format|
      format.html
      format.js {
        render :update do |page|
          page['middle_col'].replace_html "test"
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
  
  def tree
    render :json => Page.sorted.find_all_by_parent_id(params[:node]).collect{|p| { :text => p.title, :id => p.id, :cls => p.type, :leaf => false, :icon => p.icon, :allowDrag => true, :allowDrop => true, :draggable => true, :expanded => p.is_leaf? , :attributes => { :mode => "move" } } }
  end
  
  def refresh
    render :update do |page|
      page['tree'].replace_html :partial => "tree"
    end
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
