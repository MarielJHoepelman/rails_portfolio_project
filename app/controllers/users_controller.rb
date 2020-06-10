class UsersController < ApplicationController
  before_action :redirect_if_logged_in, only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:notice] = "Please fill all fields"
      render :new
    end
  end

  def show
    if logged_in?
      @categories = Category.all
      @user = User.find(params[:id])
    else
      redirect_to login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end

end
