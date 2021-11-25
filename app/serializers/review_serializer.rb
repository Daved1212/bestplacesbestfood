class ReviewSerializer < ActiveModel::ReviewSerializer
  attributes :id 

  belongs_to :user
end