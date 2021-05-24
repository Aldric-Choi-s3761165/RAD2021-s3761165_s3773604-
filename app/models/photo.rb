class Photo < ApplicationRecord
  belongs_to :product, dependent: :destroy
end
