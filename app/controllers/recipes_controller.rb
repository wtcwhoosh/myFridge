class RecipesController < ApplicationController
  # GET /recipes
  # GET /recipes.json

  before_filter :authorize_recipe_creator, :only => [:edit, :update, :destroy]
  helper_method :recipe_creator?

  def authorize_recipe_creator
    if ! recipe_creator?
      flash[:error] = 'The action is only allowed to the creator of the recipe.'
      redirect_to :back
    end
  end
  def recipe_creator?
    user = User.find(session[:user_id])
    recipe = Recipe.find(params[:id])
    user and recipe and user.id == recipe.user_id
  end

  def index
    @recipes = Recipe.search(params[:search])
    #@recipes = Recipe.all

    # respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @recipes }
    # end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @recipe = Recipe.new
    @recipe.user_id = session[:user_id]
    @drink_types = DrinkType.all
    4.times { @recipe.recipe_ingredients.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :instruction, :drinktype, :user_id,
                                   :recipe_looper_id, recipe_ingredients_attributes: [ :ingredient_id, :recipe_id, :unit, :quantity, :_destroy ] )
  end

end
