class AddFavoriteToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :favorite, :boolean, default: false
  end
end
