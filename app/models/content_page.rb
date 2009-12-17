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

class ContentPage < Page
  
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
  
end
