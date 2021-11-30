class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :photo_url, :description

  has_many :reviews, serializer: ReviewSerializer
end