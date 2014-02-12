class UserMemoryScoresController < ApplicationController
  before_action :set_user_memory_score, only: [:show, :edit, :update, :destroy]

  

  # POST /user_memory_scores
  def create
    @user_memory_score = UserMemoryScore.new(user_memory_score_params)

    if @user_memory_score.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /user_memory_scores/1
  def update
    if @user_memory_score.update(user_memory_score_params)
      redirect_to @user_memory_score, notice: 'User memory score was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /user_memory_scores/1
  def destroy
    @user_memory_score.destroy
    redirect_to user_memory_scores_url, notice: 'User memory score was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_memory_score
      @user_memory_score = UserMemoryScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_memory_score_params
      params.require(:user_memory_score).permit(:user_id, :memory_id, :up, :down)
    end
end
