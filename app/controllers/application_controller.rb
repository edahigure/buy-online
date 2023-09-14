class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    categories_path
  end

  protected

  def configure_permitted_parameters
   # devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
   # devise_parameter_sanitizer.permit(:log_in, keys: %i[email password])

    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end
