class FoodShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo_url

  has_many :restaurants, serializer: RestaurantViewSerializer
end