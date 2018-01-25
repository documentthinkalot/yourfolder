class Addsub < ActiveRecord::Migration
  def change
    add_column :subindustries, :industry_id, :integer
    add_column :subindustries, :name, :string
    add_column :suboccupations, :occupation_id, :integer
    add_column :suboccupations, :name, :string
  end
end
