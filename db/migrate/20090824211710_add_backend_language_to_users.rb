class AddBackendLanguageToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :backend_language, :string, :default => "en"
  end

  def self.down
    remove_column :users, :backend_language
  end
end
