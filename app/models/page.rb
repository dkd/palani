class Page < ActiveRecord::Base
  
  before_create :check_title
  
  has_many :content_elements
  has_many :notices
  
  validates_presence_of :title
  validates_presence_of :type
  validates_presence_of :sorting
  
  acts_as_tree :order => "sorting"
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  named_scope :sorted, :order => :sorting
  named_scope :having_sorting_bigger_than, lambda { |*args| { :conditions => ["sorting >= ?", (args.first)] } }
  
  # text is needed by extjs
  def text
    title
  end
  
  def icon
    "/images/icons/page_green.png"
  end
  
  # a leaf does not have any children
  def is_leaf?
    self.children.empty?
  end
  
  def update_sorting(drop_page, is_below = false)
    drop_page.sorting += 1 if is_below
    sorting = drop_page.sorting
    
    pages = Page.having_sorting_bigger_than(drop_page.sorting).find_all_by_parent_id(drop_page.parent_id)
    pages.each{ |page| page.update_attributes :sorting => page.sorting+1 }
    update_attributes :sorting => sorting
  end
  
  private
  
  # check if there is already a page with the same title on the same level
  def check_title
  end
  
end