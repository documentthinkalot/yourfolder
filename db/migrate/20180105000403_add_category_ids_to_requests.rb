class AddCategoryIdsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :subcategory_id, :integer
    add_column :requests, :sub2category_id, :integer
    add_column :requests, :sub3category_id, :integer
    add_column :requests, :sub4category_id, :integer
    add_column :requests, :sub5category_id, :integer
    add_column :requests, :sub6category_id, :integer
  end
end
