class AddUserIdToEachPost < ActiveRecord::Migration
  def up
  	Post.all.each do |post|
  		admin_user = AdminUser.find(post.admin_user_id)
  		user = User.find_by(email: admin_user.email)

  		post.user = user
  		post.save!
  	end
  end
end
