class CreateSuboccupations < ActiveRecord::Migration
  def change
    create_table :suboccupations do |t|

      t.timestamps null: false
    end
  end
end
