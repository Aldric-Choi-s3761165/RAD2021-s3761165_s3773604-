class PasswordResetsController < ApplicationController
    def new
    end
    def create
        @customer = Customer.find_by(email: params[:password_resets][:email].downcase)
        
        if @customer.present?
            # sent email
            @customer.send_password_reset
            redirect_to password_reset_path, notice:" We have sent a reset password link to your email"
        else
              redirect_to password_reset_path, alert:"Account not found"
        end
        
         
    end
    
    def edit
        @customer = Customer.find_by_reset_token!(params[:id])
        # if @customer.password_reset_sent_at < 15.minutes.ago
        #      redirect_to password_reset_path, alert:" link has expired"
        # else
        # end
    end
    
    def update
        @customer = Customer.find_by_reset_token!(params[:id])
        if @customer.update_attributes(params[:customer])
             redirect_to signup_path, notice:" password success changed"
        else
            render 'edit'
        end
    end
end