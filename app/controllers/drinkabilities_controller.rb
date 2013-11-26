class DrinkabilitiesController < ApplicationController
  # GET /drinkabilities
  # GET /drinkabilities.json
  def index
    @drinkabilities = Drinkability.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drinkabilities }
    end
  end

  # GET /drinkabilities/1
  # GET /drinkabilities/1.json
  def show
    @drinkability = Drinkability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drinkability }
    end
  end

  # GET /drinkabilities/new
  # GET /drinkabilities/new.json
  def new
    @drinkability = Drinkability.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drinkability }
    end
  end

  # GET /drinkabilities/1/edit
  def edit
    @drinkability = Drinkability.find(params[:id])
  end

  # POST /drinkabilities
  # POST /drinkabilities.json
  def create
    @drinkability = Drinkability.new(params[:drinkability])

    respond_to do |format|
      if @drinkability.save
        format.html { redirect_to @drinkability, notice: 'Drinkability was successfully created.' }
        format.json { render json: @drinkability, status: :created, location: @drinkability }
      else
        format.html { render action: "new" }
        format.json { render json: @drinkability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drinkabilities/1
  # PUT /drinkabilities/1.json
  def update
    @drinkability = Drinkability.find(params[:id])

    respond_to do |format|
      if @drinkability.update_attributes(params[:drinkability])
        format.html { redirect_to @drinkability, notice: 'Drinkability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drinkability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drinkabilities/1
  # DELETE /drinkabilities/1.json
  def destroy
    @drinkability = Drinkability.find(params[:id])
    @drinkability.destroy

    respond_to do |format|
      format.html { redirect_to drinkabilities_url }
      format.json { head :no_content }
    end
  end
end
