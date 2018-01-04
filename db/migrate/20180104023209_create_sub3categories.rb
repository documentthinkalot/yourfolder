class CreateSub3categories < ActiveRecord::Migration
  def change
    create_table :sub3categories do |t|

      t.timestamps null: false
    end
  end
end
