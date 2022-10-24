require 'faker'

puts 'Destroying all restaurants...'
Restaurant.destroy_all

puts 'Creating 30 restaurants...'
30.times do
  Restaurant.create!(
    name: Faker::JapaneseMedia::OnePiece.island,
    address: Faker::JapaneseMedia::OnePiece.location,
    rating: rand(1..5)
  )
  print '>'
end