class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end
  
  def show
    @customer = Customer.find(params[:id])
    # @newsletter = Newsletter.all
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      log_in @customer
      flash[:success] = "Welcome "  + @customer.username + " !"
      redirect_to @customer
    else
      render 'new'
    end
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      flash[:success] = "Profile updated"
      redirect_to @customer
    else
      render 'edit'
    end
  end
  
  private 
    def customer_params
      params.require(:customer).permit(:username, :email, :password, :password_confirmation)
    end
end
