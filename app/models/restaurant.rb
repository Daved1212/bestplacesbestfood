class Restaurant < ApplicationRecord
  attr_reader :yelp_id
  validates :name, :location, :description, :photo_url, :yelp_id, presence: true

  belongs_to :food
end