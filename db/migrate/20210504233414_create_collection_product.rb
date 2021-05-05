class CreateCollectionProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :collections_products do |t|
      t.integer:collection_id, null: false 
      t.integer:product_id, null: false
    end
  end
end
