module CustomersHelper
    def gravatar_for(customer, size: 50)
        gravatar_id=Digest::MD5::hexdigest(customer.email.downcase)
        gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url,alt:customer.username,class:"gravatar")
    end
end
