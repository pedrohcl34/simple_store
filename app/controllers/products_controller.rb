class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    Product.create(:title          =>  "Mountain Backpack 2.0",
                      :description    =>  "The best backpack for climbing",
                      :price          =>  300.34,
                      :stock_quantity =>  22)
      
      Product.create(:title          =>  "Spacial Boots",
                      :description    =>  "Boots designed to fly away",
                      :price          =>  500.89,
                      :stock_quantity =>  100)
      
      Product.create(:title          =>  "Winterpeg Gloves",
                      :description    =>  "Get dressed for the Winnipeg's winter",
                      :price          =>  78.20,
                      :stock_quantity =>  50)
      
      Product.create(:title          =>  "Dell Insiron 15",
                      :description    =>  "The best computer ever",
                      :price          =>  1300.99,
                      :stock_quantity =>  1)
      
      Product.create(:title          =>  "Bionic glasses",
                      :description    =>  "The best backpack for climbing",
                      :price          =>  300.34,
                      :stock_quantity =>  22)
      Product.create(:title          =>  "Tuna Fish",
                      :description    =>  "Marvelous fish",
                      :price          =>  24,
                      :stock_quantity =>  38)
     
  end
  # GET /products/index2
  
  def index2
    
  end
      
    
  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :stock_quantity)
    end
end
