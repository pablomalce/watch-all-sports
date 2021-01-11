class UsersController < ApplicationController
  before_action :set_user, only: [:show]


  def show
    @user = User.find(params[:id])
  end


private


  def user_params
    params.require(:user).permit(:first_name, :last_name, :username)
  end

  def set_user
    @user = current_user
  end
end