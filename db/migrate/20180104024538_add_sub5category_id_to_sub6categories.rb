class AddSub5categoryIdToSub6categories < ActiveRecord::Migration
  def change
    add_column :sub6categories, :sub5category_id, :integer
  end
end
