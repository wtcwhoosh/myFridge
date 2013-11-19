require 'test_helper'

class FridgeControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get see_recipes" do
    get :see_recipes
    assert_response :success
  end

end
