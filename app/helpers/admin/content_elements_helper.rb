module Admin::ContentElementsHelper
  def convert_for_panel(content_elements)
    panel_items = []
    content_elements.each { |c| 
      if c.element_type=="ContentElement"
        panel_items << { :title => image_tag(c.icon)+c.header, 
                         :html => render(:partial => c.administration_partial, :locals => { :content_element => c }), 
                         :collapsed => false }
      else
        panel_items << { :title => image_tag(c.icon)+c.header, 
                         :html => render(:partial => c.administration_partial, :locals => 
                              { :content_element => c, :content_element_type => Kernel.const_get(c.element_type).find_by_content_element_id(c.id) }), 
                         :collapsed => false }
      end
    }
    panel_items
  end
end
