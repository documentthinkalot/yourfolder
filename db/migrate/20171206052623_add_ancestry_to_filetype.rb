class AddAncestryToFiletype < ActiveRecord::Migration
  def change
    add_column :filetypes, :ancestry, :string
    add_index :filetypes, :ancestry
  end

  def down
    remove_index :filetypes, :ancestry
    remove_column :filetypes, :ancestry
  end
end
