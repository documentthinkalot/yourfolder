class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
