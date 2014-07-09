class UsersController < ApplicationController
  def index
    if @current_user.try(:is_admin)
      @users = User.all
    else
      @users = User.none
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :avatar, :password, :password_confirmation)
  end
end
