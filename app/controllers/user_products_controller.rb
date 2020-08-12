class UserProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :destroy]

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
    if @user_product.valid?
      redirect_to_user_products_index
    else
      flash[:notice] = "Please fill price field"
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
  end

  def update
    @user_product.price = params[:user_product][:price]
    @user_product.save
    redirect_to_user_products_index
  end

  def destroy
    @user_product.destroy
    redirect_to_user_products_index
  end

  private

  def user_products_params
    params.require(:user_product).permit(:user_id, :product_id, :price)
  end

  def find_product
    @user_product = UserProduct.find(params[:id])
  end

  def redirect_to_user_products_index
    redirect_to user_category_user_products_path(current_user, @user_product.product.category)
  end
end
