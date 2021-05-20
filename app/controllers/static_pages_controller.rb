class StaticPagesController < ApplicationController
  def home
    # @product = Product.find(Product.pluck(:id).sample)
    loadhomepagedata
    # @newsletter = Newsletter.new
  end

  def helpandsupport
  end
  
  def savedlist
    @products = Product.all
  end
end

