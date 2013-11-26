class EasinessesController < ApplicationController
  # GET /easinesses
  # GET /easinesses.json
  def index
    @easinesses = Easiness.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @easinesses }
    end
  end

  # GET /easinesses/1
  # GET /easinesses/1.json
  def show
    @easiness = Easiness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @easiness }
    end
  end

  # GET /easinesses/new
  # GET /easinesses/new.json
  def new
    @easiness = Easiness.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @easiness }
    end
  end

  # GET /easinesses/1/edit
  def edit
    @easiness = Easiness.find(params[:id])
  end

  # POST /easinesses
  # POST /easinesses.json
  def create
    @easiness = Easiness.new(params[:easiness])

    respond_to do |format|
      if @easiness.save
        format.html { redirect_to @easiness, notice: 'Easiness was successfully created.' }
        format.json { render json: @easiness, status: :created, location: @easiness }
      else
        format.html { render action: "new" }
        format.json { render json: @easiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /easinesses/1
  # PUT /easinesses/1.json
  def update
    @easiness = Easiness.find(params[:id])

    respond_to do |format|
      if @easiness.update_attributes(params[:easiness])
        format.html { redirect_to @easiness, notice: 'Easiness was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @easiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /easinesses/1
  # DELETE /easinesses/1.json
  def destroy
    @easiness = Easiness.find(params[:id])
    @easiness.destroy

    respond_to do |format|
      format.html { redirect_to easinesses_url }
      format.json { head :no_content }
    end
  end
end
