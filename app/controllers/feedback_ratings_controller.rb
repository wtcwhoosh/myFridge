class FeedbackRatingsController < ApplicationController
  # GET /feedback_ratings
  # GET /feedback_ratings.json
  def index
    @feedback_ratings = FeedbackRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedback_ratings }
    end
  end

  # GET /feedback_ratings/1
  # GET /feedback_ratings/1.json
  def show
    @feedback_rating = FeedbackRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feedback_rating }
    end
  end

  # GET /feedback_ratings/new
  # GET /feedback_ratings/new.json
  def new
    @feedback_rating = FeedbackRating.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feedback_rating }
    end
  end

  # GET /feedback_ratings/1/edit
  def edit
    @feedback_rating = FeedbackRating.find(params[:id])
  end

  # POST /feedback_ratings
  # POST /feedback_ratings.json
  def create
    @feedback_rating = FeedbackRating.new(params[:feedback_rating])

    respond_to do |format|
      if @feedback_rating.save
        format.html { redirect_to @feedback_rating, notice: 'Feedback rating was successfully created.' }
        format.json { render json: @feedback_rating, status: :created, location: @feedback_rating }
      else
        format.html { render action: "new" }
        format.json { render json: @feedback_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feedback_ratings/1
  # PUT /feedback_ratings/1.json
  def update
    @feedback_rating = FeedbackRating.find(params[:id])

    respond_to do |format|
      if @feedback_rating.update_attributes(params[:feedback_rating])
        format.html { redirect_to @feedback_rating, notice: 'Feedback rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feedback_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedback_ratings/1
  # DELETE /feedback_ratings/1.json
  def destroy
    @feedback_rating = FeedbackRating.find(params[:id])
    @feedback_rating.destroy

    respond_to do |format|
      format.html { redirect_to feedback_ratings_url }
      format.json { head :no_content }
    end
  end
end
