class YelpSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating, :name, :time_created, :image_url
end