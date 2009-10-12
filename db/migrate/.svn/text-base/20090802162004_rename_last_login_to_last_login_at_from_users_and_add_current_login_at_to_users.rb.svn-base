class RenameLastLoginToLastLoginAtFromUsersAndAddCurrentLoginAtToUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :last_login, :last_login_at
    add_column :users, :current_login_at, :datetime
  end

  def self.down
    rename_column :users, :last_login_at, :last_login
    remove_column :users, :current_login_at
  end
end
