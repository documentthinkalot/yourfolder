class AddRequestIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :request_id, :integer
  end
end
