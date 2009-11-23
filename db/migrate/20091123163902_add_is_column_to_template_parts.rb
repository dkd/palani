class AddIsColumnToTemplateParts < ActiveRecord::Migration
  def self.up
    add_column :template_parts, :is_column, :boolean, :default => false
  end

  def self.down
    remove_column :template_parts, :is_column
  end
end
