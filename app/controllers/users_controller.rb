class UsersController < ApplicationController
  before_action :authenticate_user, only: :show
  before_action :find_user, only: [:show, :destroy]

  def show
   if @user && current_user == @user
      render :show
    else
      render json: { "error":"Unauthorized" }, status: 422
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :show
    else
      render :errors, status: 422
    end
  end

  def destory
    if @user && @user.destroy
      render status: 200
    else
      render :errors, status: 422
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
