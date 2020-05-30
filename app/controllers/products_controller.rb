class ProductsController < ApplicationController

    def new
      @categories = Category.all
      @category = Category.find(params[:id])
    end

    def create
      @product = Product.create(product_params)
      redirect_to new_product_user_product_path(@product)
    end

    def index
      @products = Product.all
    end

    def show
      @product = Product.find(params[:id])
    end

    private

    def product_params
      params.require(:product).permit(:name, :category_id)
    end
end
