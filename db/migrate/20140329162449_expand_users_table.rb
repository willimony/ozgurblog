class ExpandUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :profile_pic_url, :string
    add_column :users, :email, :string
  end
end
