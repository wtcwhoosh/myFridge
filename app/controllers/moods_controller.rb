class MoodsController < ApplicationController
  before_action :set_mood, only: [:show, :edit, :update, :destroy]

  # GET /moods
  def index
    @moods = Mood.all
  end

  # GET /moods/1
  def show
  end

  # GET /moods/new
  def new
    @mood = Mood.new
  end

  # GET /moods/1/edit
  def edit
  end

  # POST /moods
  def create
    @mood = Mood.new(mood_params)

    if @mood.save
      redirect_to @mood, notice: 'Mood was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /moods/1
  def update
    if @mood.update(mood_params)
      redirect_to @mood, notice: 'Mood was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /moods/1
  def destroy
    @mood.destroy
    redirect_to moods_url, notice: 'Mood was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood
      @mood = Mood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mood_params
      params.require(:mood).permit(:name, :description, :picture)
    end
end
