class Review < ApplicationRecord
<<<<<<< HEAD
=======
  validates :body, presence: true
  # validates :rating, presence: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
>>>>>>> b1fb178580b330d7db8c00ecd85dee5e8129ca15
  
  belongs_to :user
  belongs_to :restaurant
end