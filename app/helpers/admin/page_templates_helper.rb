module Admin::PageTemplatesHelper
  
  # render the template part as current part if it is the first template part of the given parts
  # or if the template part is the part requested to be rendered
  def is_current_template_part(template_part, first_template_part, rendered_template_part = nil)
    if rendered_template_part == template_part.id
      true
    elsif !rendered_template_part
      if template_part == first_template_part
        true
      else
        false
      end
    else
      false
    end
  end
  
end
