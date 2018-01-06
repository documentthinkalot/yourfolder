class AddStatusesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sex_status, :string
    add_column :users, :age_status, :string
    add_column :users, :occupation_status, :string
    add_column :users, :industry_status, :string
    remove_column :users, :position_status
  end
end
