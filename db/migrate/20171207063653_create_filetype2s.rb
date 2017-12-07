class CreateFiletype2s < ActiveRecord::Migration
  def change
    create_table :filetype2s do |t|

      t.timestamps null: false
      t.integer :filetype_id
    end
  end
end
