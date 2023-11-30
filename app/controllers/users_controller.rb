class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :address, :phone_number, :bio, :first_name, :last_name)
  def
end
