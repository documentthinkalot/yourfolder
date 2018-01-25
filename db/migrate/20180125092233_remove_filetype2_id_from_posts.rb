class RemoveFiletype2IdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :filetype2_id, :string
  end
end
