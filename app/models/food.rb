class Food < ApplicationRecord
  validates :name, :description, :photo_url, presence: true
end