module Admin::PagesHelper
  
  def page_types
    { t('.types.content_page') => "ContentPage",
      t('.types.shortcut') => "Shortcut"  }
  end
  
  def render_settings(page)
    render :partial => "/admin/pages/edit/settings", :locals => { :fields => page.edit_fields, :type => page.class.to_s.underscore }
  end
  
end
