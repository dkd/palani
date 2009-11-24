class RenameColumnIdToTemplatePartIdAtContentElement < ActiveRecord::Migration
  def self.up
    rename_column :content_elements, :column_id, :template_part_id
  end

  def self.down
    rename_column :content_elements, :template_part_id, :column_id
  end
end
