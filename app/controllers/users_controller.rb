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
      render :new
    end
  end

  def show
    if logged_in? #IF I AM LOGGED IN
      if current_user_is_params_user?
        ## IF THE CURRENT USER ID (LOGGED IN PERSON) IS DIFFERENT FROM PARAMS, TAKE ME TO MY SHOW PAGE
        redirect_to user_path current_user
      else
        @user = User.find(params[:id])
      end
    else
      redirect_to login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end

end
