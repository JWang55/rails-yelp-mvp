# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# restaurant_attributes = []
Restaurant.destroy_all
puts "Seeding new life "

10.times do
  attributes = {
    name: Faker::Restaurant.name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number
  }
  # restaurant_attributes << attributes
  Restaurant.create!(attributes)
end

puts Restaurant.all
# Restaurant.create!(restaurant_attributes)
