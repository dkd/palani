class RemoveKeywordsAndAuthorEmailAndLayoutFromPages < ActiveRecord::Migration
  def self.up
    remove_column :pages, :keywords
    remove_column :pages, :layout
  end

  def self.down
    add_column :pages, :keywords, :string
    add_column :pages, :layout, :string
  end
end
