class ChangeDatatypeCircumstancesOfUsers < ActiveRecord::Migration
  def change
    change_column :users, :circumstances, :string
  end
end
