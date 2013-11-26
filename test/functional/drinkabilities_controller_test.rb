require 'test_helper'

class DrinkabilitiesControllerTest < ActionController::TestCase
  setup do
    @drinkability = drinkabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drinkabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drinkability" do
    assert_difference('Drinkability.count') do
      post :create, drinkability: { name: @drinkability.name }
    end

    assert_redirected_to drinkability_path(assigns(:drinkability))
  end

  test "should show drinkability" do
    get :show, id: @drinkability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drinkability
    assert_response :success
  end

  test "should update drinkability" do
    put :update, id: @drinkability, drinkability: { name: @drinkability.name }
    assert_redirected_to drinkability_path(assigns(:drinkability))
  end

  test "should destroy drinkability" do
    assert_difference('Drinkability.count', -1) do
      delete :destroy, id: @drinkability
    end

    assert_redirected_to drinkabilities_path
  end
end
