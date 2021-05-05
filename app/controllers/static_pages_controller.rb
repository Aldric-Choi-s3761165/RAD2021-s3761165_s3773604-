class StaticPagesController < ApplicationController
  def home
    @product = Product.find(Product.pluck(:id).sample)
    @products = Product.all
    @collections = Collection.all
  end

  def helpandsupport
  end
end

