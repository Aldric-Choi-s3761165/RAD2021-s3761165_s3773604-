class PasswordResetsController < ApplicationController
    def new
    end
    def create
        @customer = Customer.find_by(email: params[:email])
        
        if @customer.present?
            # sent email
            
            PasswordMailer.with(customer: @customer).reset.deliver_now
        else
        end
        
         redirect_to password_reset_path, notice:"If an acount was found, we have sent a reset password link to your email"
    end
    
    def edit
        @customer = Customer.find_signed!(params[:token],purpose: "password_reset")
    rescue ActiveSupport:: MessageVerifier::InvalidSignature
        redirect_to login_path, alert:"your token has expired"
    end
    
    def update
    end
end
