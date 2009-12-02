class Page < ActiveRecord::Base
  
  has_many :content_elements
  belongs_to :template
  
  validates_presence_of :title
  validates_presence_of :type
  validates_presence_of :sorting
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  named_scope :sorted, :order => :sorting
  named_scope :having_sorting_bigger_than, lambda { |*args| { :conditions => ["sorting >= ?", (args.first)] } }
  
  class << self
    
    # returns nil if the page could not be found
    # return the page object requested by the path
    def find_by_url(url)
      # return the first page on the root level, if the url is empty
      return Page.roots.first if url.empty?
      
      # get the first page of the path
      @current_page = Page.roots.find_by_title(url.shift)
      # go through each path segment
      url.each { |page_title| @current_page = @current_page.children.find_by_title(page_title) }
      
      @current_page
    end
    
  end
  
  # is getting used, because type is a Rails keyword
  def dummy_type=(type)
    self[:type] = type
  end
  
  # is getting used, because type is a Rails keyword
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
    children.empty?
  end
  
  # updates the sorting of pages after adding or moving a page
  # possible positions are
  # * above
  # * append
  # * below
  def update_sorting(drop_page_id, position)
    drop_page = (drop_page_id=="root") ? nil : Page.find(drop_page_id)
    if drop_page
      # if the page gets appended by another, it will get sorting=1
      if position=="append"
        update_attributes :parent_id => drop_page.id, :sorting => 1
      else
        drop_page.sorting += 1 if position=="below"
        sorting = drop_page.sorting
        
        pages = drop_page.parent_id ? Page.children_of(drop_page.parent_id) : Page.roots
        pages.having_sorting_bigger_than(drop_page.sorting).each{ |page| page.update_attributes :sorting => page.sorting+1 }
        
        update_attributes :parent_id => drop_page.parent_id, :sorting => sorting
      end
    else
      sorting = 1
      pages = Page.roots
      pages.having_sorting_bigger_than(sorting).each{ |page| page.update_attributes :sorting => page.sorting+1 }
      
      update_attributes :parent_id => nil, :sorting => sorting
    end
  end
  
end