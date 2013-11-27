class FridgeIngredientsController < ApplicationController
  # GET /fridge_ingredients
  # GET /fridge_ingredients.json
  def index
    @user = User.find(session[:user_id])
    @fridge_ingredients = FridgeIngredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fridge_ingredients }
    end
  end

  # GET /fridge_ingredients/1
  # GET /fridge_ingredients/1.json
  def show
    @user = User.find(session[:user_id])
    @fridge_ingredient = FridgeIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fridge_ingredient }
    end
  end

  # GET /fridge_ingredients/new
  # GET /fridge_ingredients/new.json
  def new
    @user = User.find(session[:user_id])
    @fridge_ingredient = FridgeIngredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fridge_ingredient }
    end
  end

  # GET /fridge_ingredients/1/edit
  def edit
    @fridge_ingredient = FridgeIngredient.find(params[:id])
  end

  # POST /fridge_ingredients
  # POST /fridge_ingredients.json
  def create
    @user = User.find(session[:user_id])
    @fridge_ingredient = FridgeIngredient.new(params[:fridge_ingredient])

    respond_to do |format|
      if @fridge_ingredient.save
        format.html { redirect_to @fridge_ingredient, notice: 'Fridge ingredient was successfully created.' }
        format.json { render json: @fridge_ingredient, status: :created, location: @fridge_ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @fridge_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fridge_ingredients/1
  # PUT /fridge_ingredients/1.json
  def update
    @fridge_ingredient = FridgeIngredient.find(params[:id])

    respond_to do |format|
      if @fridge_ingredient.update_attributes(params[:fridge_ingredient])
        format.html { redirect_to @fridge_ingredient, notice: 'Fridge ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fridge_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fridge_ingredients/1
  # DELETE /fridge_ingredients/1.json
  def destroy
    @fridge_ingredient = FridgeIngredient.find(params[:id])
    @fridge_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to fridge_ingredients_url }
      format.json { head :no_content }
    end
  end
end
