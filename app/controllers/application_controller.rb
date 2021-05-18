class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  
  # protect_from_forgery prepend: true
  include SessionsHelper
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
end
