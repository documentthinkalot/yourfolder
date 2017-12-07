class RemoveFiletype2IdFromFiletypes < ActiveRecord::Migration
  def change
    remove_column :filetypes, :filetype2_id, :string
  end
end
