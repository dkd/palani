module Admin::HelpHelper
  def render_help_sub_menu(current_action)
    menu_items = []
    menu_items << { :name => "first_steps", :actions => ["index"], :link_to => admin_help_index_path, :current => false }
    menu_items << { :name => "community", :actions => ["community"], :link_to => community_admin_help_path, :current => false }
    menu_items << { :name => "faq", :actions => ["faq"], :link_to => faq_admin_help_path, :current => false }
    
    for menu_item in menu_items
      menu_item[:current] = true if menu_item[:actions].include?(current_action)
    end
    
    render :partial => "admin/menu/sub_menu", :locals => { :menu_items => menu_items }
  end
end
