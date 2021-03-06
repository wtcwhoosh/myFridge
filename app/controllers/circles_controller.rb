class CirclesController < ApplicationController
  before_action :set_circle, only: [:show, :edit, :update, :destroy]

  # GET /circles
  def index
    @circles = Circle.all
  end

  # GET /circles/1
  def show
    @join_circle = CircleUser.new
    @memory = Memory.new
    @memory.picture = Picture.new
    @comment = Comment.new
    @user_memory_score = UserMemoryScore.find_by_user_id(current_user.id)
    @new_user_memory_score = UserMemoryScore.new
    
  end

  # GET /circles/new
  def new
    @circle = Circle.new
    @circle.setting = Setting.new
  end

  # GET /circles/1/edit
  def edit
  end

  # POST /circles
  def create
    @circle = Circle.new(circle_params)

    if @circle.save
      redirect_to @circle, notice: 'Circle was successfully created.'
      CircleUser.create(user_id: @circle.user.id, circle_id: @circle.id )

    else
      render action: 'new'
    end
  end

  # PATCH/PUT /circles/1
  def update
    if @circle.update(circle_params)
      redirect_to @circle, notice: 'Circle was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /circles/1
  def destroy
    @circle.destroy
    redirect_to circles_url, notice: 'Circle was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle
      @circle = Circle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def circle_params
      params.require(:circle).permit(:user_id, :name, :description, :picture, setting_attributes: [ :show_members, :invite_only ] )
    end
end
