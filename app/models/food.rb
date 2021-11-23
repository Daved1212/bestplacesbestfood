class Food < ApplicationRecord
  validates :name, :description, :photo_url, presence: true

  has_many :restaurants
end