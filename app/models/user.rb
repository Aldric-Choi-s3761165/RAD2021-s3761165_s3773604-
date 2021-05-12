class User < ApplicationRecord
  has_secure_password
  
  validates :email,presence:true,length:{maximum:100},
  format:{with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
      uniqueness:{case_sensitive:false}
  validates:password,presence:true,length:{minimum:8}
end
