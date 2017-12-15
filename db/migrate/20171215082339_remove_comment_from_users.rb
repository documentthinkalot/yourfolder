class RemoveCommentFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :comment, :string
  end
end
