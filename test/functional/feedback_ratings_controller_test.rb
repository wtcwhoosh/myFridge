require 'test_helper'

class FeedbackRatingsControllerTest < ActionController::TestCase
  setup do
    @feedback_rating = feedback_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedback_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback_rating" do
    assert_difference('FeedbackRating.count') do
      post :create, feedback_rating: { name: @feedback_rating.name }
    end

    assert_redirected_to feedback_rating_path(assigns(:feedback_rating))
  end

  test "should show feedback_rating" do
    get :show, id: @feedback_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedback_rating
    assert_response :success
  end

  test "should update feedback_rating" do
    put :update, id: @feedback_rating, feedback_rating: { name: @feedback_rating.name }
    assert_redirected_to feedback_rating_path(assigns(:feedback_rating))
  end

  test "should destroy feedback_rating" do
    assert_difference('FeedbackRating.count', -1) do
      delete :destroy, id: @feedback_rating
    end

    assert_redirected_to feedback_ratings_path
  end
end
