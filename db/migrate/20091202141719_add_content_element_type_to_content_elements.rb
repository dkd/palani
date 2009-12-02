class AddContentElementTypeToContentElements < ActiveRecord::Migration
  def self.up
    add_column :content_elements, :content_element_type, :string
  end

  def self.down
    remove_column :content_elements, :content_element_type
  end
end
