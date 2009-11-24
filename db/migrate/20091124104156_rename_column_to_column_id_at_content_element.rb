class RenameColumnToColumnIdAtContentElement < ActiveRecord::Migration
  def self.up
    rename_column :content_elements, :column, :column_id
  end

  def self.down
    rename_column :content_elements, :column_id, :column
  end
end
