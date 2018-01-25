class DeleteFiletype2 < ActiveRecord::Migration
  def change
    drop_table :filetype2s
  end
end
