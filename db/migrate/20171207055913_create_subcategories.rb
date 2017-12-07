class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|

      t.timestamps null: false
      t.integer :category_id
      t.string :subcategory_name
    end
  end
end
