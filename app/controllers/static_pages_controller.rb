class StaticPagesController < ApplicationController
  def home
    # @product = Product.find(Product.pluck(:id).sample)
    @product = Product.where(favorite:false).sample
    @products = Product.all
    @collections = Collection.all
  end

  def helpandsupport
  end
  
  def savedlist
    @products = Product.all
  end
end

