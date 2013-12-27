class RecipeLoopersController < ApplicationController
  # GET /recipe_loopers
  # GET /recipe_loopers.json
  def index
    @recipe_loopers = RecipeLooper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_loopers }
    end
  end

  # GET /recipe_loopers/1
  # GET /recipe_loopers/1.json
  def show
    @recipe_looper = RecipeLooper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_looper }
    end
  end

  # GET /recipe_loopers/new
  # GET /recipe_loopers/new.json
  def new
    @recipe_looper = RecipeLooper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_looper }
    end
  end

  # GET /recipe_loopers/1/edit
  def edit
    @recipe_looper = RecipeLooper.find(params[:id])
  end

  # POST /recipe_loopers
  # POST /recipe_loopers.json
  def create
    @recipe_looper = RecipeLooper.new(recipe_looper_params)

    respond_to do |format|
      if @recipe_looper.save
        format.html { redirect_to @recipe_looper, notice: 'Recipe looper was successfully created.' }
        format.json { render json: @recipe_looper, status: :created, location: @recipe_looper }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_looper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_loopers/1
  # PUT /recipe_loopers/1.json
  def update
    @recipe_looper = RecipeLooper.find(params[:id])

    respond_to do |format|
      if @recipe_looper.update(recipe_looper_params)
        format.html { redirect_to @recipe_looper, notice: 'Recipe looper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_looper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_loopers/1
  # DELETE /recipe_loopers/1.json
  def destroy
    @recipe_looper = RecipeLooper.find(params[:id])
    @recipe_looper.destroy

    respond_to do |format|
      format.html { redirect_to recipe_loopers_url }
      format.json { head :no_content }
    end
  end

private

  def recipe_looper_params
    params.require(:recipe_looper).permit(:name)
  end

end
