# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Deleting all flats...'
Flat.delete_all
puts 'Done!'

puts 'Adding 8 flats...'
8.times do
  parameters = {}
  parameters[:name] = Faker::Address.community
  parameters[:address] = Faker::Address.street_address
  parameters[:description] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  parameters[:price_per_night] = (50...500).to_a.sample
  parameters[:number_of_guests] = (1..6).to_a.sample
  Flat.create!(parameters)
end
puts 'Done!'
