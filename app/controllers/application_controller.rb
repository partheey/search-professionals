class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :type])
  end

  def authenticate_admin!
    authenticate_user!
    redirect_to root_path unless current_user.type == 'Admin'
  end
end
