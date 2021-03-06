class ApplicationController < ActionController::Base

  helper_method :logged_in?
  helper_method :current_user

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) unless session[:user_id].blank?
  end

  def redirect_if_logged_in
    if logged_in?
      redirect_to home_path
    end
  end
end
