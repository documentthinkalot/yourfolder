class AddSub6categoryNameToSub6categories < ActiveRecord::Migration
  def change
    add_column :sub6categories, :sub6category_name, :string
  end
end
