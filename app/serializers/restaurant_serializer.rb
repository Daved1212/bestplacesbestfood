class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :photo_url, :description
end