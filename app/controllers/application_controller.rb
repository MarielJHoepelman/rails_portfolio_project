class ApplicationController < ActionController::Base

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) unless session[:user_id].blank?
  end

  def redirect_if_logged_in
    if logged_in?
      redirect_to user_path(current_user)
    end
  end

  def current_user_is_params_user?
    current_user.id != params[:id].to_i
  end

end
