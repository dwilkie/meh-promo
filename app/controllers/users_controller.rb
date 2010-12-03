class UsersController < ApplicationController
  def create
    user = User.create(params[:user])
    user.persisted? ? flash[:notice] = "Thank you for your interest. We'll be in touch." :
    flash[:user] = user
    redirect_to root_path
  end
end

