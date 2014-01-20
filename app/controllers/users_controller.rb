class UsersController < ApplicationController

  def index
    @search = Sunspot.search Recipe, User do
      fulltext params[:search]
    end
    @users = @search.results
  
  end

  def show
    @user = User.find(params[:id])
  end

end
