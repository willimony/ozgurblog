class AddImageUrlToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :image_url, :string, default: 'http://rubyonrails.org/images/rails.png', null: false
  end
end
