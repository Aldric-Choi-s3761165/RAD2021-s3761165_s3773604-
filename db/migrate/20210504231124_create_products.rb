class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :popularity
      t.string :imagelink

      t.timestamps
    end
  end
end
