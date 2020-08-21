class CategoriesController < ApplicationController

  def new
  end

  def create
    @category = Category.create(category_params)
    if @category.valid?
      redirect_to home_path
    else
      flash[:notice] = "Please enter a valid category."
      redirect_to new_category_path
    end
  end

  def index
    @categories = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
