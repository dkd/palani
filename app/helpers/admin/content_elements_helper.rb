module Admin::ContentElementsHelper
  def convert_for_panel(content_elements)
    panel_items = []
    content_elements.each { |c| panel_items << { :title => c.header, :html => "", :collapsed => false } }
    panel_items
  end
end
