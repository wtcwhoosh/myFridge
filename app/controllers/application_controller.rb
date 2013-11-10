class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate, :except => 'login'

  def authenticate
    if ! session[:user_id]
      flash[:error] = 'Please login before proceed.'
      redirect_to :controller => 'auth', :action => 'login'
    end
  end

end
