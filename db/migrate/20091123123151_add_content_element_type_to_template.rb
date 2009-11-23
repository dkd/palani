class AddContentElementTypeToTemplate < ActiveRecord::Migration
  def self.up
    add_column :templates, :content_element_type, :string
  end

  def self.down
    remove_column :templates, :content_element_type
  end
end
