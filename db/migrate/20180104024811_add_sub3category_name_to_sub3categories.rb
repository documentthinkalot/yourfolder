class AddSub3categoryNameToSub3categories < ActiveRecord::Migration
  def change
    add_column :sub3categories, :sub3category_name, :string
  end
end
