class DeleteAdminUserIdFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :admin_user_id
  end
end
