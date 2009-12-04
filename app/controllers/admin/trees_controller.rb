class Admin::TreesController < Palani::BackendController

  # POST /admin/trees/tree                                                  AJAX
  #-----------------------------------------------------------------------------
  def tree
    if params[:node].to_i==0
      @pages = Page.roots.sorted
    else
      @pages = Page.children_of(params[:node]).sorted
    end
    
    render :json => @pages.collect{|p| { 
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
