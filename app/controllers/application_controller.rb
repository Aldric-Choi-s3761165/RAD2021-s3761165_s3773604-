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
      end
end
