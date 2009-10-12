class RenamePasswordToCryptedPasswordAndSaltToPasswordSaltFromUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :password, :crypted_password
    rename_column :users, :salt, :password_salt
  end

  def self.down
    rename_column :users, :crypted_password, :password
    rename_column :users, :password_salt, :salt
  end
end
