# == Schema Information
#
# Table name: content_elements
#
#  id                   :integer(4)      not null, primary key
#  page_id              :integer(4)
#  element_type         :string(255)     default("ContentElement")
#  header               :string(255)
#  header_type          :string(255)
#  starttime            :datetime
#  endtime              :datetime
#  sort                 :integer(4)      default(0)
#  hidden               :boolean(1)      default(TRUE)
#  template_part_id     :integer(4)
#  created_at           :datetime
#  updated_at           :datetime
#  tags                 :string(255)
#  element_id           :integer(4)
#  deleted_at           :datetime
#  ancestry             :string(255)
#  template_id          :integer(4)
#  content_element_id   :integer(4)
#  content_element_type :string(255)
#

# A content element consists of a general and a specific type object
#
# for example a Text object got a ContentElement object and a ContentElementText object
# both are connected via the content_element relationship defined in the specific type class(ContentElementText)
#
# a Container Element does not have any specific type object - it is the default content type(="ContentElement")
#
# In the templates the following methods/attributes are available:
# * header
# * element_type
# * hidden
# * created_at
# * updated_at
# * tags
# * page
class ContentElement < ActiveRecord::Base
  
  belongs_to :page
  
  validates_presence_of :page_id
  validates_associated :page
  validates_presence_of :element_type
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  belongs_to :template_part
  belongs_to :template
  
  named_scope :sorted, :order => :sort
  named_scope :having_sort_bigger_than, lambda { |*args| { :conditions => ["sort >= ?", (args.first)] } }
  named_scope :of_column, lambda { |*args| { :conditions => ["template_part_id = ?", (args.first)] } }
  
  liquid_methods :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page
  
  # this methods gets called when a new ContentElement gets created for creating the correct sort etc.
  #
  # defines the specified page and position on which the new content element should be created
  # if there is no position definied, the new content element will be placed on top
  def from_content_element(page_id, content_element_id=nil)
    element_type = "ContentElement"
    sort = 1
    
    if content_element_id.present?
      sort = ContentElement.find(content_element_id).sort+1
    end
    
    Page.find(page_id).content_elements.having_sort_bigger_than(sort).each{ |c| c.update_attributes :sort => c.sort+1 }
    update_attributes :sort => sort, :page_id => page_id
  end
  
  # creates the specified element type, e.g. ContentElementText, if its type is not ContentElement(Container)
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
