class Admin::TreesController < ApplicationController

  # POST /admin/trees/tree                                                  AJAX
  #-----------------------------------------------------------------------------
  def tree
    render :json => Page.sorted.find_all_by_parent_id(params[:node]).collect{|p| { 
      :text => p.title, :id => p.id, :cls => p.type, :leaf => false, :icon => p.icon, 
      :allowDrag => true, :allowDrop => true, :draggable => true, :expanded => p.is_leaf?, 
      :attributes => { :mode => "move" } } }
  end
  
  # GET /admin/trees/refresh                                                AJAX
  #-----------------------------------------------------------------------------
  def refresh
    render :update do |page|
      page['tree'].replace_html :partial => "tree"
    end
  end
  
end
