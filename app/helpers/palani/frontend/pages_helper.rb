module Palani::Frontend::PagesHelper
  
  # renders the given page object and its template parts into the given template
  def render_template(frontend_template, page)
    # initialize the collected parts with the current page object
    collected_parts = { "page" => page }
    # go through each template part and add it to the collected parts
    page.template.template_parts.backend_columns.each { |part|
      collected_parts[part.key] = render_template_part(part, page)
    }
    
    frontend_template.render(collected_parts)
  end
  
  # renders the given template part and its content elements
  def render_template_part(template_part, page)
    part = ""
    page.content_elements.find_all_by_template_part_id(template_part.id).each { |content_element|
      part += render_content_element(content_element)
    }
    part
  end
  
  # renders the given content element
  def render_content_element(content_element)
    return "" unless content_element.template
    parsed_template = Liquid::Template.parse(content_element.template.code)
    parsed_template.render('content_element' => Kernel.const_get(content_element.element_type).find_by_content_element_id(content_element.id))
  end
  
end