class ChangeDefaultImageUrl < ActiveRecord::Migration
  def change
    change_column :admin_users, :image_url, :image_url, default: 'https://scontent-a-lhr.xx.fbcdn.net/hphotos-ash3/t1.0-9/1384365_511392242283665_322222789_n.jpg'
  end
end
