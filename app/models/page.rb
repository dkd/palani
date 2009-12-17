# == Schema Information
#
# Table name: pages
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  parent_id        :integer(4)
#  starttime        :datetime
#  endtime          :datetime
#  sorting          :integer(4)
#  hidden           :boolean(1)      default(TRUE)
#  hidden_in_menu   :boolean(1)      default(FALSE)
#  subtitle         :string(255)
#  navigation_title :string(255)
#  description      :text
#  abstract         :text
#  author           :string(255)
#  author_email     :string(255)
#  target           :string(255)
#  type             :string(255)     default("ContentPage")
#  shortcut_page_id :integer(4)
#  shortcut_mode    :string(255)     default("first_subpage")
#  ext_url          :string(255)
#  created_by       :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#  deleted_at       :datetime
#  ancestry         :string(255)
#  template_id      :integer(4)
#  tags             :string(255)
#  url              :string(255)
#

# available methods for templating:
# * title (Page title)
# * type (Page type - e.g. ShortcutPage, ContentPage)
# * starttime
# * endtime
# * hidden
# * hidden_in_menu
# * subtitle
# * navigation_title
# * description
# * abstract
# * author
# * author_email
# * target
# * created_at
# * updated_at
# * ancestry
# * tags
class Page < ActiveRecord::Base
  
  has_many :content_elements, :dependent => :destroy
  belongs_to :template
  
  validates_presence_of :title
  validates_presence_of :type
  validates_presence_of :sorting
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  acts_as_url :title, :sync_url => true
  
  named_scope :sorted, :order => :sorting
  named_scope :having_sorting_bigger_than, lambda { |*args| { :conditions => ["sorting >= ?", (args.first)] } }
  named_scope :visible, :conditions => ["hidden = ? AND hidden_in_menu = ? AND template_id <> ''", false, false]
  
  liquid_methods :title, :type, :starttime, :endtime, :hidden, :hidden_in_menu, :subtitle, :navigation_title, :description, 
                 :abstract, :author, :author_email, :target, :created_at, :updated_at, :ancestry, :tags, :absolute_url, :id, :link, :path
  
  class << self
    
    # returns nil if the page could not be found
    # return the page object requested by the path
    def find_by_path(url)
      # return the first page on the root level, if the url is empty
      return Page.roots.sorted.first if url.empty?
      
      # get the first page of the path
      @current_page = Page.roots.find_by_url(url.shift)
      # go through each path segment
      url.each { |page_title| @current_page = @current_page.children.find_by_url(page_title) }
      
      @current_page
    end
    
  end
  
  # returns the path to the page
  # for example: /home/about-us/
  def path
    path = path_ids.collect{ |id| Page.find(id).url  }
    "/#{path.join('/')}/"
  end
  
  def absolute_url
    "#{Settings.website.base_url}#{path}"
  end
  
  def link
    "<a href='#{path}'>#{title}</a>"
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
