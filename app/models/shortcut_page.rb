# available modes(shortcut_modes):
# * external url
# * internal page(via id)
# * first subpage
# * random subpage
class ShortcutPage < Page
  
  validates_presence_of :shortcut_page_id, :if => :is_internal_shortcut
  validates_format_of :ext_url,
                      :with => /^(ftp|http|https)[:]\/\/([\w]+(\.[\w]+){0,})[.](\w{2,})([:][0-9]{1,5}|)$/i,
                      :message => 'invalid_ext_url',
                      :if => :is_external_url
  
  # alias for shortcut_mode
  def mode
    shortcut_mode
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
    [ { :label => "subtitle", :field_type => "text_field", :value => subtitle } ]
  end
  
  private
  
  def is_internal_shortcut
    shortcut_mode=="internal_page"
  end
  
  def is_external_url
    shortcut_mode=="external_url"
  end
  
end