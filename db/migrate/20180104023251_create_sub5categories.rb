class CreateSub5categories < ActiveRecord::Migration
  def change
    create_table :sub5categories do |t|

      t.timestamps null: false
    end
  end
end
