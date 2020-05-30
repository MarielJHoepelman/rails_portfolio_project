class UserProductsController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @user = User.find(params[:user_id])
    @user_products = UserProduct.product_from_category(params[:user_id], params[:category_id])
  end

  def new
    @product = Product.find(params[:product_id])
    @user_product = UserProduct.new(product_id: @product.id, user_id: current_user.id)
  end

  def create
    @user_product = UserProduct.create(user_products_params)

    redirect_to user_category_user_products_path(@user_product.user, @user_product.product.category)
  end

  private

  def user_products_params
    params.require(:user_product).permit(:user_id, :product_id, :expiration_date, :price)
  end

end
