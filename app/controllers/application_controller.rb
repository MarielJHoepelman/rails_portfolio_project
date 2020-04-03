class ApplicationController < ActionController::Base

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) unless session[:user_id].blank?
  end
end
