require 'test_helper'

class CirclesControllerTest < ActionController::TestCase
  setup do
    @circle = circles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circle" do
    assert_difference('Circle.count') do
      post :create, circle: { description: @circle.description, name: @circle.name, picture: @circle.picture, user_id: @circle.user_id }
    end

    assert_redirected_to circle_path(assigns(:circle))
  end

  test "should show circle" do
    get :show, id: @circle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @circle
    assert_response :success
  end

  test "should update circle" do
    patch :update, id: @circle, circle: { description: @circle.description, name: @circle.name, picture: @circle.picture, user_id: @circle.user_id }
    assert_redirected_to circle_path(assigns(:circle))
  end

  test "should destroy circle" do
    assert_difference('Circle.count', -1) do
      delete :destroy, id: @circle
    end

    assert_redirected_to circles_path
  end
end
