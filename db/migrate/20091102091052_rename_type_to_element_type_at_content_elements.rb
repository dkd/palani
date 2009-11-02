class RenameTypeToElementTypeAtContentElements < ActiveRecord::Migration
  def self.up
    rename_column :content_elements, :type, :element_type
  end

  def self.down
    rename_column :content_elements, :element_type, :type
  end
end
