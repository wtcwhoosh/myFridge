require 'test_helper'

class InvitationsControllerTest < ActionController::TestCase
  setup do
    @invitation = invitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invitation" do
    assert_difference('Invitation.count') do
      post :create, invitation: { accepted: @invitation.accepted, invitable_id: @invitation.invitable_id, invitable_type: @invitation.invitable_type, receiving_user_id: @invitation.receiving_user_id, sending_user_id: @invitation.sending_user_id, time_sent: @invitation.time_sent }
    end

    assert_redirected_to invitation_path(assigns(:invitation))
  end

  test "should show invitation" do
    get :show, id: @invitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invitation
    assert_response :success
  end

  test "should update invitation" do
    patch :update, id: @invitation, invitation: { accepted: @invitation.accepted, invitable_id: @invitation.invitable_id, invitable_type: @invitation.invitable_type, receiving_user_id: @invitation.receiving_user_id, sending_user_id: @invitation.sending_user_id, time_sent: @invitation.time_sent }
    assert_redirected_to invitation_path(assigns(:invitation))
  end

  test "should destroy invitation" do
    assert_difference('Invitation.count', -1) do
      delete :destroy, id: @invitation
    end

    assert_redirected_to invitations_path
  end
end
