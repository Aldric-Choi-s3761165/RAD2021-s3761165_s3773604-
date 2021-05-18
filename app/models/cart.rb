class Cart < ApplicationRecord
    has_many :orders
    belongs_to :customer, :class_name => 'Customer', :foreign_key => 'customer_id', dependent: :destroy
    # belongs_to :user, :class_name => 'User', :foreign_key => 'user_id', dependent: :destroy
end
