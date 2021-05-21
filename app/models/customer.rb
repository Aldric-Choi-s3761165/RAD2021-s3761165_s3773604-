class Customer < ApplicationRecord
    attr_accessor :remember_token
    after_create do
        Cart.create(customer_id: self.id)
    end
    has_one :cart
    self.table_name = "customers"
    
    validates :username, presence:true
    
    validates :username,presence:true,length:{maximum:25}
    validates :email,presence:true,length:{maximum:100},
        format:{ with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
        uniqueness:{case_sensitive:false}
        
    before_save{self.email=email.downcase}
    
    has_secure_password
    
    validates:password, presence: true, length: { minimum: 8 }, allow_nil: true
    validates:password, presence: true, length: { maximum: 20 }, allow_nil: true
    
    def Customer.digest(string)     
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost     
        BCrypt::Password.create(string, cost: cost)   
    end
    
    def send_password_reset
        update_attribute(:reset_token,Customer.new_token)
        update_attribute(:password_reset_sent_at, Time.zone.now)
        PasswordMailer.reset(self).deliver
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
    
    # def self.find_or_create_from_auth_hash(auth_hash)
    #     customer = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
    #     customer.update(
    #       username: auth_hash.info.nickname,
    #       profile_image: auth_hash.info.image,
    #       token: auth_hash.credentials.token,
    #       secret: auth_hash.credentials.secret
    #     )
    #     customer
    # end
end
