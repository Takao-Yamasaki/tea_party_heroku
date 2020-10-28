class UsersController < ApplicationController
  def index
    @users = User.order(:id)
  end
  
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
