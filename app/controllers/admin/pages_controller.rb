class Admin::PagesController < ApplicationController
  
  def index
  end
  
  def tree
    render :json => Page.not_deleted.find_all_by_parent_id(params[:node]).collect{|p| { :text => p.title, :id => p.id, :cls => p.type, :leaf => false, :icon => p.icon, :href => "/admin/pages/5/show", :allowDrag => true, :allowDrop => true, :draggable => true, :expanded => p.is_leaf? , :attributes => { :mode => "move" } } }
  end
  
  def refresh
    render :update do |page|
      page['tree'].replace_html :partial => "tree"
    end
  end
  
  def create
    page = ContentPage.new :title => t("new_page")
    drop_page = Page.find(params[:drop_id])
    page.parent_id = drop_page.parent_id
    
    if params[:position]=="above"
      page.update_sorting drop_page
    else
      page.update_sorting drop_page, true
    end
    
    page.save
    
    render :json => { :text => page.title, :id => page.id, :cls => page.type, :leaf => true  }
  end
  
  def destroy
    page = Page.find(params[:id])
    page.delete
    
    render :json => { :deleted => true }
  end
  
  def move
    page = Page.find(params[:drag_id])
    drop_page = Page.find(params[:drop_id])
    page.update_attributes :parent_id => drop_page.parent_id
    
    if params[:position]=="above"
      page.update_sorting drop_page
    else
      page.update_sorting drop_page, true
    end
    
    render :json => { :deleted => true }
  end
  
end
