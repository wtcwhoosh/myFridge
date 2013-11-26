require 'test_helper'

class EasinessesControllerTest < ActionController::TestCase
  setup do
    @easiness = easinesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:easinesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create easiness" do
    assert_difference('Easiness.count') do
      post :create, easiness: { name: @easiness.name }
    end

    assert_redirected_to easiness_path(assigns(:easiness))
  end

  test "should show easiness" do
    get :show, id: @easiness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @easiness
    assert_response :success
  end

  test "should update easiness" do
    put :update, id: @easiness, easiness: { name: @easiness.name }
    assert_redirected_to easiness_path(assigns(:easiness))
  end

  test "should destroy easiness" do
    assert_difference('Easiness.count', -1) do
      delete :destroy, id: @easiness
    end

    assert_redirected_to easinesses_path
  end
end
