class UsersController < ApplicationController
  def index
  end

  def show
  end

  def destory
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
