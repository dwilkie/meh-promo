class UsersController < ApplicationController
  def create
    user = User.create(params[:user])
    flash[:notice] = "Thank you for your interest. We'll be in touch." if user.persisted?
    session[:user] = user
    redirect_to root_path
  end
end

