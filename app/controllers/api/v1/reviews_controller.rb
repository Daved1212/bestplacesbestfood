class Api::V1::Reviews < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def create
    Review = Review.new(review_params)
    Review.user = current_user
    Review.restaurant_id = params[:restaurant_id]
  end

  if Review.save
    render json: Review
  else
    render json: {error: review.errors.full_messages.to_sentance }, status: :unprocessable_entity
  end
end

  private

  def reviews_params
    params.require(:review).permit(:body, :rating)
  end
end