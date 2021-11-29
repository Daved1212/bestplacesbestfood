class UserReviewsSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :created_at, :user

  belongs_to :user
end