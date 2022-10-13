require_relative 'restaurant'
require_relative 'fast_food_restaurant'
require_relative 'fine_dining_restaurant'

mcdonalds = FastFoodRestaurant.new("McDonald's", 'burgers', 'Roppongi', 50, 3)

puts "#{mcdonalds.name} is currently #{mcdonalds.open? ? 'open' : 'closed'}."

mcdonalds.make_reservation('Sho')

ichiran = Restaurant.new('Ichiran Ramen', 'ramen', 'omotesando', 30)
fujiya = FineDiningRestaurant.new('Fujiya 1935', 'modern japanese', 'osaka', 16, 3)

fujiya.make_reservation('Yulia')
fujiya.make_reservation('Joyce')


p ichiran, mcdonalds