class Product < ApplicationRecord
    has_and_belongs_to_many :collection
    has_and_belongs_to_many :savedlist
    
    def saved_in?(savedlist) 
        self.courses.include?(savedlist) 
    end
    
    def unsaved_products
        Savedlist.all - self.savedlists
    end
end
