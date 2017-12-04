class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
