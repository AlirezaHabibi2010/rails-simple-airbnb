# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |_|
  name = Faker::Name.middle_name
  address = Faker::Address.street_address
  description = Faker::Quote.famous_last_words
  price_per_night = rand(40..100)
  number_of_guests = rand(1..5)

  flat = Flat.create!(
    name: name,
    address: address,
    description: description,
    price_per_night: price_per_night,
    number_of_guests: number_of_guests
  )
  puts "Created #{flat.id}"
  # rand(8..15).times do |_|
  #   content = Faker::Quote.famous_last_words
  #   rating = rand(1..5)
  #   review = Review.create!(content: content, rating: rating, restaurant: restaurant)
  # end
end
