class AddPostIdToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :article_id
    add_column :comments, :post_id, :integer
  end
end
