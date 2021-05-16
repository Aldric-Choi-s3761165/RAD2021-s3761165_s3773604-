class AddCustomerToCart < ActiveRecord::Migration[5.1]
  def change
    add_reference :carts, :customer, foreign_key: true
  end
end
