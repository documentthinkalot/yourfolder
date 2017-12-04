class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
