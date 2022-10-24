require 'faker'

# This is where you can create initial data for your app.
puts "Seeding database with restaurants..."

Restaurant.destroy_all

40.times do |n|
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    rating: rand(1..5)
  )
  restaurant.save!
end
