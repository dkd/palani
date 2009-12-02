class AddContentElementTypeIdToContentElements < ActiveRecord::Migration
  def self.up
    add_column :content_elements, :content_element_id, :int
  end

  def self.down
    remove_column :content_elements, :content_element_id
  end
end
