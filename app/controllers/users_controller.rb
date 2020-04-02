class UsersController < ApplicationController


  def new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signup_path
    end
  end

  def show
    if logged_in?
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
