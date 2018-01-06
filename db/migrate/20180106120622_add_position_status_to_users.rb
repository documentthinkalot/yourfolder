class AddPositionStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position_status, :string
  end
end
