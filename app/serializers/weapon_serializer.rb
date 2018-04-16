class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :attack_points, :durability, :price
end