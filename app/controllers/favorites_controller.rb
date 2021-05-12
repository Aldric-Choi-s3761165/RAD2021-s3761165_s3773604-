class FavoritesController < ApplicationController
    before_action :set_product, only: [:create, :destroy]
    
    def create
    # Use the `favorite!` method to set the task's favorite boolean to true
        @product.favorite!
        #comment
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
    # Use the `unfavorite!` method to set the task's favorite boolean to false
        @product.unfavorite!
        #comment
        redirect_back(fallback_location: root_path)
    end
    
    private
    
    def set_product
        @product = Product.find(params[:id])
    end
end
