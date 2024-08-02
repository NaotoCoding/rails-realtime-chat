class ApplicationController < ActionController::Base
  def authenticate_user!
    if session[:user_id].nil?
      redirect_to users_sign_in_path
      return
    end

    @current_user = User.find(session[:user_id])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
