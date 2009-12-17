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
#
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
    [ { :label => "shortcut_mode", :field_type => "select_box", 
        :value => { :options => { I18n.t('admin.pages.shortcut_page.external_page') => "external_page", I18n.t('admin.pages.shortcut_page.internal_page') => "internal_page", 
                                  I18n.t('admin.pages.shortcut_page.first_subpage') => "first_subpage", I18n.t('admin.pages.shortcut_page.random_subpage') => "random_subpage"  } , 
        :selected => mode } },
      { :label => "ext_url", :field_type => "text_field", :value => ext_url },
      { :label => "shortcut_page_id", :field_type => "text_field", :value => shortcut_page_id }]
  end
  
  private
  
  def is_internal_shortcut
    shortcut_mode=="internal_page"
  end
  
  def is_external_url
    shortcut_mode=="external_url"
  end
  
end
