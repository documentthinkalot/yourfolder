class AddUserinfosagainToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sex,:string
    add_column :users, :company,:string
    add_column :users, :circumstances,:string
    add_column :users, :position,:string
    add_column :users, :age,:integer
    add_column :users, :number_of_employees,:integer
    add_column :users, :place_id,:integer
    add_column :users, :industry_id,:integer
    add_column :users, :occupation_id,:integer
  end
end
