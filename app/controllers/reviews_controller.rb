class ReviewsController < ApplicationController
  before_action :find_review, only: %i[show destroy]

  def create
    @review = Review.new(review_params)
    if @review.save
      render :show
    else
      render :errors, status: 422
    end
  end

  def destory
    if @review && @review.destory
      render status: 200
    else
      render :errors, status: 422
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:user_id, :boot_id, :body, :rating)
  end
end
