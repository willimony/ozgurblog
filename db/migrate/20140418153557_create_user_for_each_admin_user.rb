class CreateUserForEachAdminUser < ActiveRecord::Migration
  def up
  	AdminUser.all.each do |admin_user|
  		User.create!(
  			email: admin_user.email,
  			password: 'password',
  			password_confirmation: 'password',
  			full_name: admin_user.username
  		)
  	end
  end

  def down
  end
end
