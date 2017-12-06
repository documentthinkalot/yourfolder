class AddFiletypeIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :filetype_id, :integer
  end
end
