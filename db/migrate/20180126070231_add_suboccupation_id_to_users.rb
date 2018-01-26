class AddSuboccupationIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :suboccupation_id, :integer
  end
end
