class RemoveReadCountFieldFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :read_count
  end
end
