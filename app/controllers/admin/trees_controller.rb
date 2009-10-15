class Admin::TreesController < ApplicationController

  def tree
    render :json => Page.sorted.find_all_by_parent_id(params[:node]).collect{|p| { :text => p.title, :id => p.id, :cls => p.type, 
      :leaf => false, :icon => p.icon, :allowDrag => true, :allowDrop => true, :draggable => true, :expanded => p.is_leaf? , 
      :attributes => { :mode => "move" } } }
  end
  
  def refresh
    render :update do |page|
      page['tree'].replace_html :partial => "tree"
    end
  end
  
end
