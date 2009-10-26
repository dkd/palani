module Admin::PagesHelper
  
  def page_types
    page_types = Settings.backend.pages.to_a
    page_types.each { |p| p[0] = t "admin.pages.edit.types."+p[0] }
  end
  
  def render_settings(page)
    render :partial => "/admin/pages/edit/settings", :locals => { :fields => page.edit_fields, :type => page.class.to_s.underscore }
  end
  
end
