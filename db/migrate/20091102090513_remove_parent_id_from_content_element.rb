class RemoveParentIdFromContentElement < ActiveRecord::Migration
  def self.up
    remove_column :content_elements, :parent_id
  end

  def self.down
    add_column :content_elements, :parent_id, :integer
  end
end
