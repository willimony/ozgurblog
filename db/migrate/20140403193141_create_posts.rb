class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.boolean :published
      t.integer :category_id
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
