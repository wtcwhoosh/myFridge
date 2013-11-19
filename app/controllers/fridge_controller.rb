class FridgeController < ApplicationController
  
  def fridge
    @user = User.find(session[:user_id])
    @fridge = User.fridge.ingredients.all
  end

  def add
    @user_id = User.find(session[:user_id])
    @ingredients = Ingredients.all
    @fridge = Fridge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fridge_ingredient }
    end
  end

  def create
    @user = User.find(session[:user_id])
    @fridge = Fridge.create(:fridge_ingredient)
    
    respond_to do |format|
      format.html { redirect_to recipe_ingredients_url }
      format.json { head :no_content }
    end
  end

  def remove
    @fridge = Fridge.find(params[:id])
    @fridge.destroy

    respond_to do |format|
      format.html { redirect_to recipe_ingredients_url }
      format.json { head :no_content }
    end
  end

  def see_recipes
    
  
  end
end
