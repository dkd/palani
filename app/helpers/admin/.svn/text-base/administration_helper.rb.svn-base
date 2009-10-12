module Admin::AdministrationHelper
  def render_administration_sub_menu(current_action)
    menu_items = []
    menu_items << { :name => "edit_profile", :actions => ["edit_profile"], 
                                             :link_to => edit_profile_admin_administration_path, :current => false }
    menu_items << { :name => "list_users", :actions => ["index","edit","new"], :link_to => admin_users_path, :current => false }
    
    for menu_item in menu_items
      menu_item[:current] = true if menu_item[:actions].include?(current_action)
    end
    
    render :partial => "admin/menu/sub_menu", :locals => { :menu_items => menu_items }
  end
end
