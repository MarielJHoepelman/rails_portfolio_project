class BrandsController < ApplicationController

  def new
  end

  def create
    @brand = Brand.create(brand_params)
    redirect_to brand_path(@brand)
  end

  def show
    @brand = Brand.find(params[:id])
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end
end
