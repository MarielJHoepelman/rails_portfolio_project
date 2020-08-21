class SessionsController < ApplicationController
  before_action :redirect_if_logged_in, only: [:home, :new]

  def home
  end

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email]) unless params[:session][:email].blank?

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash[:notice] = "Invalid email/password combination"
      redirect_to login_path
    end
  end

  def google
    @user = User.find_or_create_by(email: auth.info.email) do |user|
      user.name = auth.info.name
      user.password = SecureRandom.hex
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

  def auth
    request.env['omniauth.auth']
  end
end
