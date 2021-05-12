class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    def hello     
        render html: "hello, world!"   
    end
    
    private
      def loadhomepagedata
        @product = Product.where(favorite:false).sample
        @products = Product.all
        @collections = Collection.all
        @popular = Product.order(popularity: :desc)
      end
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
