class AddCollectionNameToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :collection_name, :string, default: ""
  end
end
