class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false, unique: true
      t.integer :boot_id, null: false
      t.text :body
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
