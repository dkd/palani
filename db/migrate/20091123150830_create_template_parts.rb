class CreateTemplateParts < ActiveRecord::Migration
  def self.up
    create_table :template_parts do |t|
      t.integer :template_id
      t.string :key
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :template_parts
  end
end
