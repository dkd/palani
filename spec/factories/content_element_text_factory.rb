Factory.define :content_element_text do |p|
  p.content_element { |c| c.association(:content_element, :element_type => "ContentElementText") }
end