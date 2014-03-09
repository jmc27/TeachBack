class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
  end

  private


  #Set the current user before anything else
  def set_user
    @user = current_user
  end

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
