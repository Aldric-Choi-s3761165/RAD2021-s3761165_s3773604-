class Customer < ApplicationRecord
    attr_accessor :remember_token
    after_create do
        Cart.create customer: self
    end
    has_one :cart
    
    validates :username, presence:true
    
    validates :username,presence:true,length:{maximum:25}
    validates :email,presence:true,length:{maximum:100},
        format:{ with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
        uniqueness:{case_sensitive:false}
        
    before_save{self.email=email.downcase}
    
    has_secure_password
    
    validates:password, presence: true, length: { minimum: 8 }
    validates:password, presence: true, length: { maximum: 20 }
    
    def Customer.digest(string)     
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost     
        BCrypt::Password.create(string, cost: cost)   
    end
    
    def Customer.new_token     
        SecureRandom.urlsafe_base64   
    end
    
    def remember
        self.remember_token = Customer.new_token
        update_attribute(:remember_digest, Customer.digest(remember_token))
    end
    
    def authenticated?(remember_token) 
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)   
    end 
    
    def forget     
        update_attribute(:remember_digest, nil)   
    end
end
