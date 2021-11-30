class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :user

  belongs_to :user
end