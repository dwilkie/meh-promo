class WelcomeController < ApplicationController
  def index
    user = session[:user]
    @user = user && !user.persisted? ? user : User.new
  end
end

