class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :photo_url, :description

  has_many :userReviews, serializer: UserReviewsSerializer
end