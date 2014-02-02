class InvitationsController < ApplicationController
  before_action :set_invitation, only: [:show, :edit, :update, :destroy]

  # GET /invitations
  def index
    @invitations = Invitation.all
  end

  # GET /invitations/1
  def show
  end

  # GET /invitations/new
  def new
    @invitation = Invitation.new
  end

  # GET /invitations/1/edit
  def edit
  end

  # POST /invitations
  def create
    @invitation = Invitation.new(invitation_params)

    if @invitation.save
      redirect_to @invitation, notice: 'Invitation was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /invitations/1
  def update
    if @invitation.update(invitation_params) and @invitation.accepted?
      CircleUser.create(user_id: @invitation.receiving_user_id, circle_id: @invitation.invitable_id )
      redirect_to Circle.find_by_id(@invitation.invitable_id )
      @invitation.destroy
    else
      redirect_to users_home_path
      @invitation.destroy
    end
  end

  # DELETE /invitations/1
  def destroy
    @invitation.destroy
    redirect_to invitations_url, notice: 'Invitation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invitation_params
      params.require(:invitation).permit(:sending_user_id, :receiving_user_id, :invitable_id, :invitable_type, :time_sent, :accepted)
    end
end
