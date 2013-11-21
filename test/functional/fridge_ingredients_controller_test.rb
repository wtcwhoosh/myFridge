require 'test_helper'

class FridgeIngredientsControllerTest < ActionController::TestCase
  setup do
    @fridge_ingredient = fridge_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fridge_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fridge_ingredient" do
    assert_difference('FridgeIngredient.count') do
      post :create, fridge_ingredient: { ingredient_id: @fridge_ingredient.ingredient_id, quantity: @fridge_ingredient.quantity, user_id: @fridge_ingredient.user_id }
    end

    assert_redirected_to fridge_ingredient_path(assigns(:fridge_ingredient))
  end

  test "should show fridge_ingredient" do
    get :show, id: @fridge_ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fridge_ingredient
    assert_response :success
  end

  test "should update fridge_ingredient" do
    put :update, id: @fridge_ingredient, fridge_ingredient: { ingredient_id: @fridge_ingredient.ingredient_id, quantity: @fridge_ingredient.quantity, user_id: @fridge_ingredient.user_id }
    assert_redirected_to fridge_ingredient_path(assigns(:fridge_ingredient))
  end

  test "should destroy fridge_ingredient" do
    assert_difference('FridgeIngredient.count', -1) do
      delete :destroy, id: @fridge_ingredient
    end

    assert_redirected_to fridge_ingredients_path
  end
end
