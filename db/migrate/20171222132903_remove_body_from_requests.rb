class RemoveBodyFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :body, :string
  end
end
