class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
  end
  
  def products
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
    @order = Order.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def product_params
    params.require(:product).permit(:name, :price, :popularity, :favorite, :imagelink)
  end
  
  # def savedlists
  #   @product = Product.find(params[:id]) 
  #   @savedlists = @product.savedlists
  # end 
  
  # def save
  #   #Convert ids from routing to objects 
  #   @product = Product.find(params[:id])
  #   @savedlist = Savedlist.find(params[:course])
  #   unless @product.saved_in?(@course) 
  #     #add course to list using << operator 
  #     @product.savedlists<< @savedlist 
  #     flash[:notice] = 'Product was successfully saved' 
  #   else 
  #     flash[:error] = 'Product was already saved' 
  #   end 
  #   redirect_to action: "savedlists", id: @product 
  # end
  
  # def unsave
  #   #Convert ids from routing to object 
  #   @product = Product.find(params[:id]) 
  #   #get list of courses to remove from query string
  #   savedlist_ids= params[:savedlists] 
  #   if savedlist_ids.any? 
  #     savedlist_ids.each do |savedlist_id| 
  #       savedlist = Savedlist.find(savedlist_id) 
  #       if @product.saved_in?(savedlist)
  #         logger.info"Removing product from saved list #{savedlist.id}" 
  #         @product.savedlists.delete(savedlist) 
  #         flash[:notice] = 'Saved list was successfully deleted'
  #       end
  #     end
  #   end
  #   redirect_to action: "savedlists", id: @product 
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find_by_name(params[:name])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :imagelink)
    end
end
