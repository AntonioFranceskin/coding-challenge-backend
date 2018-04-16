# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Zombie.destroy_all
Weapon.destroy_all
Armor.destroy_all

50.times do
  Zombie.create!(
    name: Faker::Superhero.prefix,
    hit_points: Faker::Number.between(1, 10),
    speed: Faker::Number.between(1, 10),
    brains_eaten: Faker::Number.between(1, 50),
    turn_date: Faker::Date.between(2.years.ago, Date.today)
  )
end

20.times do
  Weapon.create!(
    name: Faker::Hacker.adjective,
    attack_points: Faker::Number.between(1, 10),
    durability: Faker::Number.between(1, 10),
    price: Faker::Number.between(1, 50)
  )
end

ARMOR_SUFFIXES = %w(armor helmet shield).freeze

20.times do
  Armor.create!(
    name: Faker::Food.ingredient,
    defense_points: Faker::Number.between(1, 10),
    durability: Faker::Number.between(1, 10),
    price: Faker::Number.between(1, 50)
  )
end

50.times do
  ZombieArmor.create!(
    zombie_id: Faker::Number.between(1, 50),
    armor_id: Faker::Number.between(1, 20)
  )
end

50.times do
  ZombieWeapon.create!(
    zombie_id: Faker::Number.between(1, 50),
    weapon_id: Faker::Number.between(1, 20)
  )
end