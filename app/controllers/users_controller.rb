class UsersController < ApplicationController
  helper_method :circle_member?

  def home
    @circles = Circle.all
    @memories = Memory.all
  end
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  


end
