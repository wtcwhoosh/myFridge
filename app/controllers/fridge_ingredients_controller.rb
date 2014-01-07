class FridgeIngredientsController < ApplicationController
  # GET /fridge_ingredients
  # GET /fridge_ingredients.json
  helper_method :sort_column, :sort_direction




  def index
    @user = current_user
    @fridge_ingredients = FridgeIngredient.all
    @user.recipe_looper.recipes = Recipe.order(sort_column + " " + sort_direction)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fridge_ingredients }
    end
  end

  # GET /fridge_ingredients/1
  # GET /fridge_ingredients/1.json
  def show
    @user = current_user
    @fridge_ingredient = FridgeIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fridge_ingredient }
    end
  end

  # GET /fridge_ingredients/new
  # GET /fridge_ingredients/new.json
  def new
    @user = current_user
    @fridge_ingredient = FridgeIngredient.new
    @fridge_ingredients = FridgeIngredient.where(:user_id == current_user.id)
    @recipe_ingredients = RecipeIngredient.all
#    @user.recipe_looper.recipes = Recipe.order(sort_column + " " + sort_direction)

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
    @user = current_user
    @fridge_ingredient = FridgeIngredient.new(fridge_ingredient_params)

    respond_to do |format|
      if @fridge_ingredient.save
        format.html { redirect_to new_fridge_ingredient_path, notice: 'Fridge ingredient was successfully created.' }
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
      if @fridge_ingredient.update(fridge_ingredient_params)
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
      format.html { redirect_to new_fridge_ingredient_path }
      format.json { head :no_content }
    end
  end

  private
  def sort_column
    Recipe.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def fridge_ingredient_params
    params.require(:fridge_ingredient).permit(:ingredient_id, :quantity, :user_id, :ingredient_name)
  end


end
