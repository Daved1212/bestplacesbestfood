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
    render json: {error: userReview.errors.full_messages.to_sentance }, status: :unprocessable_entity
  end
end

  private

  def reviews_params
    params.require(:Review).permit(:body, :rating)
  end
end