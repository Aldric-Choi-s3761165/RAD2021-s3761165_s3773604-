class Collection < ApplicationRecord
    has_and_belongs_to_many :products
    
    def to_param
      name
    end
end
