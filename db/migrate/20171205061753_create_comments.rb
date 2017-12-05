class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps null: false
      t.integer :user_id
      t.integer :article_id
      t.text :body
    end
  end
end
