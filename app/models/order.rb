class Order < ApplicationRecord
  belongs_to :product
  belongs_to :cart, dependent: :destroy
end
