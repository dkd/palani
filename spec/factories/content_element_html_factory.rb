Factory.define :content_element_html do |p|
  p.content_element { |c| c.association(:content_element, :element_type => "ContentElementHtml") }
end