class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :filename
      t.string :width
      t.string :height
      t.string :thumbnail

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
