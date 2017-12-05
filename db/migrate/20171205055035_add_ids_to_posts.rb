class AddIdsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id,:string
    add_column :posts, :category_id,:string
  end
end
