module Admin::ContentElementsHelper

  def get_title_of(item)
    link =  image_tag(item.icon) + (item.header||"") 
    link << link_to(image_tag("icons/edit.png"), polymorphic_path([:edit, :admin, item.page, item]), :class => "remote-link")
    link << link_to(image_tag("icons/bin.png"), polymorphic_path([:admin, item.page, item]), :class => "remote-link-delete")
    link
  end
  
  def convert_for_panel(content_elements)
    panel_items = []
    content_elements.each { |c| 
      if c.element_type=="ContentElement"
        panel_items << { :title => get_title_of(c),
                         :id => c.id, 
                         :html => render(:partial => c.administration_partial, :locals => { :content_element => c }), 
                         :collapsed => false, :static => true,
                         :toolbar => new_content_element_button(c) }
      else
        panel_items << { :title => get_title_of(Kernel.const_get(c.element_type).find_by_content_element_id(c.id)),
                         :id => c.id,
                         :html => render(:partial => c.administration_partial, :locals => 
                              { :content_element => c, :content_element_type => Kernel.const_get(c.element_type).find_by_content_element_id(c.id) }), 
                         :collapsed => false, :static => true,
                         :toolbar => new_content_element_button(c) }
      end
    }
    panel_items
  end
  
  def new_content_element_button(content_element = nil, template_part = nil)
    link_to t("admin.content_elements.add_new"), new_admin_page_content_element_path(@page,
                   :content_element => (content_element ? content_element.id : nil), :page => @page.id,
                   :template_part => (content_element ? content_element.template_part_id : template_part)),
                   :class => "add remote-link"
  end
  
  def content_element_types
    page_types = Settings.backend.content_elements.to_a
    page_types.each { |p| p[0] = t("admin.content_elements.type_names."+p[0]) }
  end
  
  def image_position_types
    path = "admin.content_elements.types.content_element_image.positions."
    { t(path+"above") => "above", t(path+"left") => "left", t(path+"right") => "right", t(path+"below") => "below" }
  end
  
end