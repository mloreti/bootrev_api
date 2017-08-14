class CreateBoots < ActiveRecord::Migration[5.1]
  def change
    create_table :boots do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.string :upper, null: false
      t.string :boot_type, null: false

      t.timestamps
    end
  end
end
