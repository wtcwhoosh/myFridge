class CircleUsersController < ApplicationController
  before_action :set_circle_user, only: [:show, :edit, :update, :destroy]

  # GET /circle_users
  def index
    @circle_users = CircleUser.all
  end

  # GET /circle_users/1
  def show
  end

  # GET /circle_users/new
  def new
    @circle_user = CircleUser.new
  end


  # POST /circle_users
  def create
    @circle_user = CircleUser.new(circle_user_params)
    @circle = Circle.find(@circle_user.circle_id)

    if @circle_user.save
      redirect_to @circle, notice: 'Circle was successfully Joined.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /circle_users/1
  def update
    if @circle_user.update(circle_user_params)
      redirect_to @circle_user, notice: 'Circle user was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /circle_users/1
  def destroy
    @circle_user.destroy
    redirect_to circles_url, notice: 'Circle user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle_user
      @circle_user = CircleUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def circle_user_params
      params.require(:circle_user).permit(:circle_id, :user_id)
    end
end
