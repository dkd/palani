class AddAncestryToContentElement < ActiveRecord::Migration
  def self.up
    add_column :content_elements, :ancestry, :string
    add_index :content_elements, :ancestry
  end

  def self.down
    remove_column :content_elements, :ancestry
    remove_index :content_elements, :ancestry
  end
end