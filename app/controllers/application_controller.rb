class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :possible_recipes


  def authenticate
    if ! session[:user_id]
      flash[:error] = 'Please login before proceed.'
      redirect_to :controller => 'auth', :action => 'login'
    end
  end
  
  def possible_recipes(fridge_ingredients, recipe_ingredients)
    available_ingredients = fridge_ingredients.collect do |fridge_ingredient|
      fridge_ingredient.ingredient.name.to_s
    end
    recipes = recipe_ingredients.collect do |recipe_ingredient|
        available_ingredients.include? recipe_ingredient.ingredient.name.to_s
    end
    unless recipes.empty?
      puts recipes
    end
  end
  

  #   common_ingredients = fridge_ingredients.ingredient & recipe_ingredients.ingredient
  #   common_ingredients.each do |common_ingredient|
  #     recipes ||= []
  #     recipes << Recipe.where(Recipe.recipe_ingredient == common_ingredient) 
  #   end
  #   recipes.each do |recipe|
  #     put recipe
  #   end
  # end
          
  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, 
                                                            :uid, :provider) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:profilePicture, :firstName, :lastName, :email, :password, 
                                                                   :password_confirmation, :current_password) }
  end
end
