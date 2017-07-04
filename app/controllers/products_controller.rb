class ProductsController < ApplicationController
  def index
   @products = Product.all
   @reviews = Review.all
   @random_products = Product.order('RANDOM()').limit(5)
 end

 def show
   @product = Product.find(params[:id])
 end

 def new
   @product = Product.new
 end

 def create
   @product = Product.new(product_params)
   if @product.save
     redirect_to products_path, notice: "Product successfully added!"
   else
     render :new
   end
 end

 def edit
   @product = Product.find(params[:id])
 end

 def update
   @product = Product.find(params[:id])
   if @product.update(product_params)
     redirect_to @product, notice: "Product successfully updated!"
   else
     render :edit
   end
 end

 def destroy
   @product = Product.find(params[:id])
   @product.reviews.each do |review|
     review.destroy
   end
   @product.destroy
   redirect_to products_path
 end


 private
   def product_params
     params.require(:product).permit(:name, :cost, :origin)
   end

   def find_product
     @product = Product.find(params[:id])
   end
end
