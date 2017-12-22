class AddBodyToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :body, :integer
  end
end
