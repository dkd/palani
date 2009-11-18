Factory.define :content_element_image do |p|
  p.content_element { |c| c.association(:content_element, :element_type => "ContentElementImage") }
end