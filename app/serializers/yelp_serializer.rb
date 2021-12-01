class YelpSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating, :name, :time_created
  
  belongs_to :restaurant
end