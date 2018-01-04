class AddSub3categoryIdToSub4categories < ActiveRecord::Migration
  def change
    add_column :sub4categories, :sub3category_id, :integer
  end
end
