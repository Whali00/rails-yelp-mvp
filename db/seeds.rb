# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# le_ritz = Restaurant.new{name: "Le Ritz", address: "5 avenue Champs-Elysées", phone_number: "0785235945", category: "french"}
# quick = Restaurant.new{name: "Quick", address: "20 rue Emile Zola", phone_number: "0825637995", category: "belgian" }
# chez_marco = Restaurant.new{name: "Chez Marco", address: "3 rue Stalingrad", phone_number: "0689256915", category: "italian"}
# nodaiwa = Restaurant.new{name: "Nodaiwa", address: "15 rue Marcel Duchamp", phone_number: "0985238945", category: "japanese"}
# fung_shun = Restaurant.new{name: "Fung Shun", address: "40 rue Charles Dantont", phone_number: "0786539940", category: "chinese"}

puts "Cleaning database..."
Restaurant.destroy_all if Rails.env.development?

puts "Creating restaurants..."
Restaurant.create!(name: "Le Ritz", address: "5 avenue Champs-Elysées", phone_number: "0785235945", category: "french")
Restaurant.create!(name: "Quick", address: "20 rue Emile Zola", phone_number: "0825637995", category: "belgian" )
Restaurant.create!(name: "Chez Marco", address: "3 rue Stalingrad", phone_number: "0689256915", category: "italian")
Restaurant.create!(name: "Nodaiwa", address: "15 rue Marcel Duchamp", phone_number: "0985238945", category: "japanese")
Restaurant.create!(name: "Fung Shun", address: "40 rue Charles Dantont", phone_number: "0786539940", category: "chinese")

puts "Finished!"
