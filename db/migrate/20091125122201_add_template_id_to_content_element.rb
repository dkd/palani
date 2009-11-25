class AddTemplateIdToContentElement < ActiveRecord::Migration
  def self.up
    add_column :content_elements, :template_id, :integer
  end

  def self.down
    remove_column :content_elements, :template_id
  end
end
