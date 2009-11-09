class ContentElement < ActiveRecord::Base
  
  belongs_to :page
  has_many :notices
  
  validates_presence_of :page_id
  validates_associated :page
  validates_presence_of :element_type
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  named_scope :sorted, :order => :sort
  named_scope :having_sort_bigger_than, lambda { |*args| { :conditions => ["sort >= ?", (args.first)] } }
  
  # defines the specified page and position on which the new content element should be created
  # if there is no position definied, the new content element will be placed on top
  def from_content_element(page_id, content_element_id=nil)
    element_type = "ContentElement"
    self.page_id = page_id
    sort = 1
    
    if content_element_id.present?
      sort = ContentElement.find(content_element_id).sort+1
    end
    
    Page.find(page_id).content_elements.having_sort_bigger_than(sort).each{ |c| c.update_attributes :sort => c.sort+1 }
    update_attributes :sort => sort
  end
  
  # creates the specified element type, e.g. ContentElementText
  def create_element_type
    Kernel.const_get(element_type).find_or_create_by_content_element_id(id) unless element_type=="ContentElement"
  end
  
  # returns the icon, that is used for the backend
  def icon
    unless  element_type=="ContentElement"
      Kernel.const_get(element_type).find_by_content_element_id(id).icon
    else  
      "icons/content_elements/content_element.png"
    end
  end
  
  # defines the path to the partial, that gets rendered in the body part of a content element in the backend
  # custom content elements should have a method 'administration_partial' returning the specific partial
  def administration_partial
    unless  element_type=="ContentElement"
      Kernel.const_get(element_type).find_by_content_element_id(id).administration_partial
    else  
      "admin/content_elements/types/content_element/administration"
    end
  end
  
end