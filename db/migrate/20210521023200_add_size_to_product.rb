class AddSizeToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size, :string, default: "S"
  end
end
