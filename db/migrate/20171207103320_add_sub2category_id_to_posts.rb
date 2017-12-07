class AddSub2categoryIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sub2category_id, :integer
  end
end
