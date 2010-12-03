class PagesController < ApplicationController
  def index
    @user = flash[:user] || User.new
  end

  def features

  end
end

