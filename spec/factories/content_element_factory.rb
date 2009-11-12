Factory.define :content_element do |p|
  p.element_type "ContentElement"
  p.association :page, :factory => :content_page
end