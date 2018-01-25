class CreateSubindustries < ActiveRecord::Migration
  def change
    create_table :subindustries do |t|

      t.timestamps null: false
    end
  end
end
