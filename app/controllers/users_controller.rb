class UsersController < ApplicationController
  helper_method :circle_member?

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def circle_member?
    member_ids = @circle_members.collect do |circle_member|
      circle_member.id
    end
    if member_ids.include? current_user.id
    end
  end



end
