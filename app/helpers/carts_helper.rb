module CartsHelper
    
  def clear
    @cart = Cart.find_by_user_id(current_user_twitter.id)
    @cart.orders.delete_all
  end
  
end
