class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if @user && current_user == @user
      render :show
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
    @user = User.find(params[:id])
    if @user && @user.destroy
      render status: 200
    else
      render json: { :error => @user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
