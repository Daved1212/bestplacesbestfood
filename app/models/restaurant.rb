class Restaurant < ApplicationRecord
  validates :name, :location, :description, :photo_url, :yelp_id, presence: true

  belongs_to :food
end