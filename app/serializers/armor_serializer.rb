class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :defense_points, :durability, :price
end
