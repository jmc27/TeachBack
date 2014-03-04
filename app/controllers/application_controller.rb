class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  #Route to user page on sign-in
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_updated_account_path_for(resource)
  	user_path(current_user)
  end

  protected

  #Allow additional parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
  end
end
