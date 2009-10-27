class Page < ActiveRecord::Base
  
  has_many :content_elements
  
  validates_presence_of :title
  validates_presence_of :type
  validates_presence_of :sorting
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  named_scope :sorted, :order => :sorting
  named_scope :having_sorting_bigger_than, lambda { |*args| { :conditions => ["sorting >= ?", (args.first)] } }
  

  def dummy_type=(type)
    self[:type] = type
  end
  
  def dummy_type
    type
  end
  
  # alias for title - needed for ExtJS
  def text
    title
  end
  
  # returns the icon of the specific page type
  # can be overwritten in the kind class
  def icon
    "/images/icons/pages/#{self.class.to_s.underscore}.png"
  end
  
  # the labels will be used as locale keys
  # required attributes:
  # * label
  # * field_type
  # * value
  # optional attributes:
  # * options
  # available field types:
  # * text_field
  # * text_area
  # returns the input fields and labels, that should be displayed in the "settings" tab, as an hash
  def edit_fields
    []
  end
  
  # a leaf does not have any children
  def is_leaf?
    true
  end
  
  # updates the sorting of pages after adding or moving a page
  # possible positions are
  # * above
  # * append
  # * below
  def update_sorting(drop_page, position)
    # if the page gets appended by another, it will get sorting=1
    if position=="append"
      update_attributes :parent_id => drop_page.id, :sorting => 1
    else
      drop_page.sorting += 1 if position=="below"
      sorting = drop_page.sorting
      
      pages = Page.children_of(drop_page.parent_id).having_sorting_bigger_than(drop_page.sorting)
      pages.each{ |page| page.update_attributes :sorting => page.sorting+1 }
      
      update_attributes :parent_id => drop_page.parent_id, :sorting => sorting
    end
  end
  
end