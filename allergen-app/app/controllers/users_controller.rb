class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :create, :destroy]

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
