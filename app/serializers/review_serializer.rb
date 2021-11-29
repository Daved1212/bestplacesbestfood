class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :created_at, :user

  belongs_to :user
  belongs_to :restaurants
end