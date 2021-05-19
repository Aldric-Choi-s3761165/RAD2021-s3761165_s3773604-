class User < ApplicationRecord
  after_create do
    Cart.create(user_id: self.id)
  end
  has_one :cart
  self.table_name = "users"
  
  def self.find_or_create_from_auth_hash(auth_hash)
    user = User.where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
    user.update(
      name: auth_hash.info.nickname,
      profile_image: auth_hash.info.image,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
    )
    user
  end
end
