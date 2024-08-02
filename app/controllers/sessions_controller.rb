class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @user = User.find(params[:user_id])
    session[:user_id] = @user.id
    redirect_to root_url
  end
end
