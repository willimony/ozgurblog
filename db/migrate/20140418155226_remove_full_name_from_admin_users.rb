class RemoveFullNameFromAdminUsers < ActiveRecord::Migration
  def up
  	remove_column :admin_users, :username
  	remove_column :admin_users, :image_url
  end

  def down
  	add_column :admin_users, :username, :string
  	add_column :admin_users, :image_url, :string
  end
end
