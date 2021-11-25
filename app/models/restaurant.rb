class Restaurant < ApplicationRecord
  validates :name, :location, :description, :photo_url, presence: true

  belongs_to :food
  
end