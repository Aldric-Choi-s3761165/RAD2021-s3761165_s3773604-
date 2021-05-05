class FavoritesController < ApplicationController
    before_action :set_product, only: [:create, :destroy]
    
    def create
    # Use the `favorite!` method to set the task's favorite boolean to true
        @product.favorite!
        # redirect_to tasks_url
    end
    
    def destroy
    # Use the `unfavorite!` method to set the task's favorite boolean to false
        @product.unfavorite!
        # redirect_to tasks_url
    end
    
    private
    
    def set_product
        @product = Product.find(params[:id])
    end
end
