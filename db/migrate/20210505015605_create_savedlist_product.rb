class CreateSavedlistProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :savedlists_products do |t|
      t.integer:savedlist_id, null: false 
      t.integer:product_id, null: false
    end
  end
end
