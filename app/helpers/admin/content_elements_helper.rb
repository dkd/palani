module Admin::ContentElementsHelper

  def convert_for_panel(content_elements)
    panel_items = []
    content_elements.each { |c| 
      if c.element_type=="ContentElement"
        panel_items << { :title => image_tag(c.icon)+(c.header||""),
                         :id => c.id, 
                         :html => render(:partial => c.administration_partial, :locals => { :content_element => c }), 
                         :collapsed => false, :static => true,
                         :toolbar => new_content_element_button(c) }
      else
        panel_items << { :title => image_tag(c.icon)+(c.header||""),
                         :id => c.id,
                         :html => render(:partial => c.administration_partial, :locals => 
                              { :content_element => c, :content_element_type => Kernel.const_get(c.element_type).find_by_content_element_id(c.id) }), 
                         :collapsed => false, :static => true,
                         :toolbar => new_content_element_button(c) }
      end
    }
    panel_items
  end
  
  def new_content_element_button(content_element = nil)
    link_to t("admin.content_elements.add_new"), new_admin_page_content_element_path(@page, :content_element => (content_element ? content_element.id : nil), :page => @page.id), 
                   :class => "add remote-link"
  end
  
  def content_element_types
    page_types = Settings.backend.content_elements.to_a
    page_types.each { |p| p[0] = t "admin.content_elements.types."+p[0] }
  end
  
end