class AddPasswordResetToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :reset_token, :string
    add_column :customers, :password_reset_sent_at, :datetime
  end
end
