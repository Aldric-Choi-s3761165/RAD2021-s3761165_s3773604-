class SessionsController < ApplicationController
  def new
  end
  
  def create
    customer= Customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password])
      log_in customer
      params[:session][:remember_me] == '1' ? remember(customer) : forget(customer)
      remember customer
      redirect_to customer
    
    else
      flash.now[:danger] = 'Wrong email or password' 
      render 'new'
    end
  end
  
  def destroy
    # @cart = Cart.find_by_customer_id(current_customer)
    # @cart.orders.delete_all
    log_out if logged_in?     
    redirect_to root_url   
  end
  
  # def omniauth_create
  #   @customer = Customer.find_or_create_from_auth_hash(auth_hash)
  #   session[:customer_id] = @customer.id
  #   redirect_to root_path
  # end
 
  # protected
 
  # def auth_hash
  #   request.env['omniauth.auth']
  # end
end
