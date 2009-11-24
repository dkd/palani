class Template < ActiveRecord::Base
  include ActionView::Helpers::JavaScriptHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionController::UrlWriter
  include ERB::Util
  
  ALLOCATED_TAGS = ["content_for_layout"]
  
  has_many :template_parts
  
  before_save :parse_parts
  
  validates_presence_of :title
  
  accepts_nested_attributes_for :template_parts
  
  named_scope :grid_data, :select => 'id,title,code'
  
  def actions
    actions = link_to_remote( image_tag("icons/edit.png") , 
                                  :url => { :controller => "admin/"+self.class.to_s.tableize, :action => "edit", :id => id, :only_path => true  }, 
                                  :method => "get")
    actions << link_to_remote( image_tag("icons/delete.png") , 
                                  :url => { :controller => "admin/"+self.class.to_s.tableize, :action => "destroy", :id => id, :only_path => true  }, 
                                  :method => "delete")
  end
  
  # returns a html escaped code with a maximum of 60 chars
  def clean_code
    truncate(html_escape(code), :length => 60, :omission => "...")
  end
  
  # parses the given template code to offer several markers, that can be used for cols
  def parse_parts(code = nil)
    code ||= self.code
    # parse the given code
    t = Liquid::Template.parse(code)
    keys = []
    # add the several markers to keys = []
    t.root.nodelist.each { |part| keys << part.name if part.is_a? Liquid::Variable }
    # remove allocated tags
    keys.delete_if { |e|  ALLOCATED_TAGS.include?(e) }
    # remove duplicates
    keys.uniq
    # create new markers
    keys.each { |key| self.template_parts.find_or_create_by_key(key)  }
  end
  
end