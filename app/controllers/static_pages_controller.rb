class StaticPagesController < ApplicationController
  def home
    # @product = Product.find(Product.pluck(:id).sample)
    loadhomepagedata
    @newsletter = Newsletter.new
    @orders = Order.all
  end

  def helpandsupport
  end
  
  def savedlist
    @products = Product.all
  end
  
  def scan
    
  end
  
  def search
    if params[:q]
    @products = Product.where("name LIKE ?", "%" + params[:q] + "%")
    end
  end
  
  
  def filter
    @collections = Collection.all
    @products = Product.all
    
    if params[:all] == "1"
      @products.each do |product|
        product.color = params[:color]
        product.size = params[:size]
        product.save
      end
      params[:all] = "0"
    end
    
    if params[:men] == "1"
      @products = @collections.find_by_name("men").products
      @products.each do |product|
        product.color = params[:color]
        product.size = params[:size]
        product.save
      end
      params[:men] = "0"
    end
    
    if params[:women] == "1"
      @products = @collections.find_by_name("women").products
      @products.each do |product|
        product.color = params[:color]
        product.size = params[:size]
        product.save
      end
      params[:women] = "0"
    end
    
    if params[:kids] == "1"
      @products = @collections.find_by_name("kids").products
      @products.each do |product|
        product.color = params[:color]
        product.size = params[:size]
        product.save
      end
      params[:kids] = "0"
    end
    
    if params[:newarrival] == "1"
      @products = @collections.find_by_name("new-arrival").products
      @products.each do |product|
        product.color = params[:color]
        product.size = params[:size]
        product.save
      end
      params[:newarrival] = "0"
    end

    if params[:commit]
      flash[:notice] = 'Filtered'
    end
  end
end

