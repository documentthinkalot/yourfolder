class CreateSub2categories < ActiveRecord::Migration
  def change
    create_table :sub2categories do |t|

      t.timestamps null: false
      t.string :sub2category_name
      t.integer :subcategory_id
    end
  end
end
