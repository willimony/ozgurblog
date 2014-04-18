class AddUserIdToEachPost < ActiveRecord::Migration
  def up
  	Post.all.each do |post|
  		admin_user = post.admin_user
  		user = User.find_by(email: admin_user.email)

  		post.user = user
  		post.save!
  	end
  end
end
