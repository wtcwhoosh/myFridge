require 'test_helper'

class UserMemoryScoresControllerTest < ActionController::TestCase
  setup do
    @user_memory_score = user_memory_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_memory_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_memory_score" do
    assert_difference('UserMemoryScore.count') do
      post :create, user_memory_score: { down: @user_memory_score.down, memory_id: @user_memory_score.memory_id, up: @user_memory_score.up, user_id: @user_memory_score.user_id }
    end

    assert_redirected_to user_memory_score_path(assigns(:user_memory_score))
  end

  test "should show user_memory_score" do
    get :show, id: @user_memory_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_memory_score
    assert_response :success
  end

  test "should update user_memory_score" do
    patch :update, id: @user_memory_score, user_memory_score: { down: @user_memory_score.down, memory_id: @user_memory_score.memory_id, up: @user_memory_score.up, user_id: @user_memory_score.user_id }
    assert_redirected_to user_memory_score_path(assigns(:user_memory_score))
  end

  test "should destroy user_memory_score" do
    assert_difference('UserMemoryScore.count', -1) do
      delete :destroy, id: @user_memory_score
    end

    assert_redirected_to user_memory_scores_path
  end
end
