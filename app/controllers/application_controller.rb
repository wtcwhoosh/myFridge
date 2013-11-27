class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate, :except => 'login'
  helper_method :current_user?

  def authenticate
    if ! session[:user_id]
      flash[:error] = 'Please login before proceed.'
      redirect_to :controller => 'auth', :action => 'login'
    end
  end

  def current_user?
    User.find(params[:user_id]) == User.find(session[:user_id])
  end



end
