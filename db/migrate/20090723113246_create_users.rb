class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :salt
      t.string :surname
      t.string :name
      t.string :email
      t.string :last_ip
      t.datetime :last_login

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
