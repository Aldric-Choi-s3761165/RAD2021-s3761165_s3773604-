class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end
  
  def show
    @customer = Customer.find(params[:id])
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
  
  def index
      @customers= Customer.all
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
    
    
    before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    def logged_in
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    before_action :correct_customer,   only: [:edit, :update]
    
    def correct_customer
      @customer= Customer.find(params[:id])
      redirect_to(root_url) unless @customer== current_customer
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
end