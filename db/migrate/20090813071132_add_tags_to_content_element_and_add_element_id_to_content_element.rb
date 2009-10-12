class AddTagsToContentElementAndAddElementIdToContentElement < ActiveRecord::Migration
  def self.up
    add_column :content_elements, :tags, :string
    add_column :content_elements, :element_id, :integer
  end

  def self.down
    remove_column :content_elements, :element_id
    remove_column :content_elements, :tags
  end
end
