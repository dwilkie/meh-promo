class PagesController < ApplicationController
  def index
    user = session[:user]
    @user = user && !user.persisted? ? user : User.new
  end

  def features

  end
end

