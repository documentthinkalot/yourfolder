class CreateSub4categories < ActiveRecord::Migration
  def change
    create_table :sub4categories do |t|

      t.timestamps null: false
    end
  end
end
