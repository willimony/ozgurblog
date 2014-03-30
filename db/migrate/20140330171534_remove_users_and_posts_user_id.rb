class RemoveUsersAndPostsUserId < ActiveRecord::Migration
  def change
    drop_table :admins
    remove_column :posts, :user_id
    drop_table :users
  end
end
