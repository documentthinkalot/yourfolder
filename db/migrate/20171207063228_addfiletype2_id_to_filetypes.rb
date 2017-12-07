class Addfiletype2IdToFiletypes < ActiveRecord::Migration
  def change
    add_column :filetypes, :filetype2_id, :integer
    remove_column :filetypes, :ancestry
    remove_column :categories, :ancestry
  end
end
