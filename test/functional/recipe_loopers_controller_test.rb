require 'test_helper'

class RecipeLoopersControllerTest < ActionController::TestCase
  setup do
    @recipe_looper = recipe_loopers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_loopers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_looper" do
    assert_difference('RecipeLooper.count') do
      post :create, recipe_looper: { name: @recipe_looper.name }
    end

    assert_redirected_to recipe_looper_path(assigns(:recipe_looper))
  end

  test "should show recipe_looper" do
    get :show, id: @recipe_looper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_looper
    assert_response :success
  end

  test "should update recipe_looper" do
    put :update, id: @recipe_looper, recipe_looper: { name: @recipe_looper.name }
    assert_redirected_to recipe_looper_path(assigns(:recipe_looper))
  end

  test "should destroy recipe_looper" do
    assert_difference('RecipeLooper.count', -1) do
      delete :destroy, id: @recipe_looper
    end

    assert_redirected_to recipe_loopers_path
  end
end
