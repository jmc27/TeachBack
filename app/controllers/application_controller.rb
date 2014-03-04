class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Route to user page on sign-in
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
end
