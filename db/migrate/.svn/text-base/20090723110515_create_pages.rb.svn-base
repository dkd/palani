class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.integer :parent_id, :default => 1, :null=> false
      t.datetime :starttime
      t.datetime :endtime
      t.integer :sorting
      t.boolean :deleted, :default => false
      t.boolean :hidden, :default => true
      t.boolean :hidden_in_menu, :default => false
      t.string :subtitle
      t.string :navigation_title
      t.text :description
      t.text :keywords
      t.text :abstract
      t.string :author
      t.string :author_email
      t.string :target
      t.string :type, :default => "ContentPage"
      t.integer :shortcut_page_id
      t.string :shortcut_mode
      t.string :ext_url
      t.integer :created_by
      t.string :layout

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
