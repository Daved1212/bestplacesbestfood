class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name
end