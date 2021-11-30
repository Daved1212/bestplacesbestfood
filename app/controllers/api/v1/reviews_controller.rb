class Api::V1::ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    review = Review.new(review_params)
    review.user = current_user
    review.restaurant_id = params[:restaurant_id]
    
    if review.save
      render json: review
    else
      render json: { error: review.errors.full_messages.to_sentence }, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end