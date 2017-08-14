class BootsController < ApplicationController
  before_action :find_boot, only: [:show, :destroy]

  def index
    @boots = Boot.all
  end

  def show
  end

  def create
    @boot = Boot.new(boot_params)
    if @boot.save
      render :show
    else
      render :errors, status: 422
    end
  end

  def destory
    if @boot && @boot.destory
      render status: 200
    else
      render :errors, status: 422
    end
  end

  private

  def find_boot
    @boot = Boot.find(params[:id])
  end

  def boot_params
    params.require(:boot).permit(:brand, :model, :boot_type, :upper)
  end
end
