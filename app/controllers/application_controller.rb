class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
#  before_action :configure_permitted_parameters if :devise_controller?



#  def authenticate
#    if ! session[:user_id]
#      flash[:error] = 'Please login before proceed.'
#      redirect_to :controller => 'auth', :action => 'login'
#    end
#  end

#  def current_user?
#    User.find(params[:user_id]) == User.find(session[:user_id])
#  end



 protected


  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :provider, :uid )  }
  end
end
