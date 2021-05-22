class AddColorToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :color, :string, default: "Blue"
  end
end
