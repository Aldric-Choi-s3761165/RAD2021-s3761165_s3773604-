module UsersHelper
    def gravatar_for_user(customer, size: 50)
        # gravatar_id=Digest::MD5::hexdigest(customer.name.downcase)
        # gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(customer.profile_image,alt:customer.profile_image,class:"gravatar")
    end
end
