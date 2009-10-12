class RenameLastIpToLastLoginIpFromUsersAndAddCurrentLoginIpToUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :last_ip, :last_login_ip
    add_column :users, :current_login_ip, :string
  end

  def self.down
    rename_column :users, :last_login_ip, :last_ip
    remove_column :users, :current_login_ip
  end
end
