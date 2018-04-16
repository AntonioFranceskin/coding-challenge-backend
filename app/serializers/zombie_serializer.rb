class ZombieSerializer < ActiveModel::Serializer
  attributes :id, :name, :hit_points, :brains_eaten, :speed, :turn_date
end
