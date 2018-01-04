class AddSub4categoryNameToSub4categories < ActiveRecord::Migration
  def change
    add_column :sub4categories, :sub4category_name, :string
  end
end
