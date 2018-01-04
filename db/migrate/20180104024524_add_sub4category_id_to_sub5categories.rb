class AddSub4categoryIdToSub5categories < ActiveRecord::Migration
  def change
    add_column :sub5categories, :sub4category_id, :integer
  end
end
