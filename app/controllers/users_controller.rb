class UsersController < ApplicationController
  helper_method :circle_member?

  def home
    @user_circles = current_user.circles
    @circles = Circle.all
    @memories = Memory.all
    @memory = Memory.new
    @memory.picture = Picture.new
    @comment = Comment.new
  end
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  


end
