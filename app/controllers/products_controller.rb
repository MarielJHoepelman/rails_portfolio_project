class ProductsController < ApplicationController
  def new
    @product = Product.new(category_id: params[:category_id])
  end

  def create
    @product = Product.create(product_params)
    redirect_to new_product_user_product_path(@product)
  end

  def index
    @category = Category.find(params[:category_id])
    @products = Product.where(category_id: params[:category_id])
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :category_id)
  end
end
