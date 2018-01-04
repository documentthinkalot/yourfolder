class AddToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sub3category_id, :integer
    add_column :posts, :sub4category_id, :integer
    add_column :posts, :sub5category_id, :integer
    add_column :posts, :sub6category_id, :integer
  end
end
