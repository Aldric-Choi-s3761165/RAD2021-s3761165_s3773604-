class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end
  
  def show
    @customer = Customer.find(params[:id])
    @newsletter = Newsletter.all
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
  
  def subscribe
    @customer = Customer.find(params[:id])
    @newsletter = Newsletter.find_by_email(@customer.email)
    if @newsletter.subscribe == false
      @newsletter.subscribe = true
      flash[:notice] = 'You are subscribed'
    elsif @newsletter.subscribe == true
      @newsletter.subscribe = false
      flash[:notice] = 'You are unsubscribed'
    end
    @newsletter.save
    redirect_back(fallback_location: current_customer)
  end
  
  private 
    def customer_params
      params.require(:customer).permit(:username, :email, :password, :password_confirmation)
    end
end
