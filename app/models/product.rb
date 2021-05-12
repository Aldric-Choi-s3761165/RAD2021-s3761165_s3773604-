class Product < ApplicationRecord
    has_and_belongs_to_many :collections
    has_many :photos
    has_many :orders
    # has_and_belongs_to_many :savedlists
    
    # def saved_in?(savedlist) 
    #     self.savedlists.include?(savedlist) 
    # end
    
    # def unsaved_products
    #     Savedlist.all - self.savedlists
    # end
    
    def to_param
      name
    end
    
    def favorite!
        self.favorite = true
        self.save!
    end
    
    def unfavorite!
        self.favorite = false
        self.save!
    end
end
