module Admin::RenderHelper
  
  # renders the main navigation
  def render_main_menu(current_controller)
    menu_items = []
    menu_items << { :name => "pages", :controllers => ["admin/pages"], :link_to => root_path, :current => false  }
    menu_items << { :name => "administration", :controllers => ["admin/administration","admin/users","admin/user_groups"], 
                    :link_to => edit_profile_admin_administration_path, :current => false }
    menu_items << { :name => "help", :controllers => ["admin/help"], :link_to => admin_help_index_path, :current => false }
    
    for menu_item in menu_items do
      menu_item[:current] = true if menu_item[:controllers].include? current_controller
    end
  
    render :partial => "admin/menu/main_menu", :locals => { :menu_items => menu_items }
  end
  
  def render_actions(actions = [])
    #actions << { :name => t("back"), :link_to => :back, :general => true }
    
    render :partial => "admin/menu/actions", :locals => { :actions => actions } unless actions.empty?
  end
  
  # renders the grid module of ExtJS and creates a new grid
  # the title will be shown on top of the grids
  # the fields will be user for creating the grid and for loading data from the json
  # the url will be automatically generated from the current controller and action, format: JSON
  def render_ext_grids(title, url, fields, options = {})
    render :partial => "admin/extjs/list", :locals => {
                          :remote_url => url,
                          :title => title,
                          :fields => fields,
                          :auto_expand => options[:auto_expand] }
  end
  
  # renders a Ext.panel object containing several items that can be sorted by drag an drop
  # each item should have a title and a html part
  def render_ext_panel(items = [])
    items.each { |item| item[:html] = item[:html].gsub(/"/,'\"').gsub(/\n/,'') }
    render :partial => "admin/extjs/panel", :locals => {
                        :items => items
    }
  end
  
  # renders the right col
  def render_right_col(partial_file = "", locals = {})
    partial_file = "right_col" if partial_file.empty?
    render :partial => partial_file, :locals => locals
  end
  
  # renders the notifications
  def render_notifications
    render :partial => "admin/general/notifications"
  end
  
  # renders a multi select box
  def render_multi_select(remote_url, fields, options = {})
    render :partial => "admin/general/multi_select", :locals => {
                        :remote_url => remote_url,
                        :fields => fields,
                        :valueField => options[:valueField],
                        :showField => options[:showField],
                        :name => options[:name],
                        :selected_values => options[:selected_values]
    }
  end
  
end