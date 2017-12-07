class AddFiletype2NameToFiletype2 < ActiveRecord::Migration
  def change
    add_column :filetype2s, :filetype2_name, :string
  end
end
