class AddReadCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :read_count, :integer, default: 0
  end
end
