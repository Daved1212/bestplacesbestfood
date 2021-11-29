class Api::V1::UserReviews < ApplicationController
  
  def create
    userReview = UserReviews.new(userReviews_params)
    userReview.user = current_user
    userReview.restaurant_id = params[:restaurant_id]
  end

  if userReview.save
    render json: userReview
  else
    render json: {error: userReview.errors.full_messages.to_sentance }, status: :unprocessable_entity
  end
end

  private

  def userReviews_params
    params.require(:userReview).permit(:body, :rating)
  end
end