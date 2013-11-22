require 'test_helper'

class EasienssesControllerTest < ActionController::TestCase
  setup do
    @easienss = easiensses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:easiensses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create easienss" do
    assert_difference('Easienss.count') do
      post :create, easienss: { name: @easienss.name }
    end

    assert_redirected_to easienss_path(assigns(:easienss))
  end

  test "should show easienss" do
    get :show, id: @easienss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @easienss
    assert_response :success
  end

  test "should update easienss" do
    put :update, id: @easienss, easienss: { name: @easienss.name }
    assert_redirected_to easienss_path(assigns(:easienss))
  end

  test "should destroy easienss" do
    assert_difference('Easienss.count', -1) do
      delete :destroy, id: @easienss
    end

    assert_redirected_to easiensses_path
  end
end
