class CreateSub6categories < ActiveRecord::Migration
  def change
    create_table :sub6categories do |t|

      t.timestamps null: false
    end
  end
end
