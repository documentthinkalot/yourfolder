class AddSub5categoryNameToSub5categories < ActiveRecord::Migration
  def change
    add_column :sub5categories, :sub5category_name, :string
  end
end
