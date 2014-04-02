class ChangePostPublishing < ActiveRecord::Migration
  def change
    change_column :posts, :published, :published, default: true
  end
end
