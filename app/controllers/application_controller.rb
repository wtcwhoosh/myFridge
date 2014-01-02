class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
#  before_action :configure_permitted_parameters if :devise_controller?



  def authenticate
    if ! session[:user_id]
      flash[:error] = 'Please login before proceed.'
      redirect_to :controller => 'auth', :action => 'login'
    end
  end



#  protected


#  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, 
#                                                            :uid, :provider) }
#  end
end
