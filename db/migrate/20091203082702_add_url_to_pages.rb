class AddUrlToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :url, :string
  end

  def self.down
    remove_column :pages, :url
  end
end
