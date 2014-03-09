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
end
