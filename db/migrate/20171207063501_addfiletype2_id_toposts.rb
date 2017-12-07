class Addfiletype2IdToposts < ActiveRecord::Migration
  def change
    add_column :posts, :filetype2_id, :integer
  end
end
