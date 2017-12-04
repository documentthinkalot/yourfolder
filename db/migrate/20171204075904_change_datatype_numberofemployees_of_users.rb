class ChangeDatatypeNumberofemployeesOfUsers < ActiveRecord::Migration
  def change
    change_column :users, :number_of_employees, :string
  end
end
