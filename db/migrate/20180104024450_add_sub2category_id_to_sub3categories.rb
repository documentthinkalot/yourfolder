class AddSub2categoryIdToSub3categories < ActiveRecord::Migration
  def change
    add_column :sub3categories, :sub2category_id, :integer
  end
end
