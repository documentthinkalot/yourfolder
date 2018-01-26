class AddSubindustryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subindustry_id, :integer
  end
end
