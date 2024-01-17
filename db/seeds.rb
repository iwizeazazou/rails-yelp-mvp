# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing records to avoid duplication during development
Restaurant.destroy_all

# Seed the database with at least 5 restaurants
restaurants_data = [
  { name: "Chinese Restaurant 1", address: "123 Main St", category: "chinese" },
  { name: "Italian Restaurant 1", address: "456 Oak St", category: "italian" },
  { name: "Japanese Restaurant 1", address: "789 Maple St", category: "japanese" },
  { name: "French Restaurant 1", address: "101 Pine St", category: "french" },
  { name: "Belgian Restaurant 1", address: "202 Elm St", category: "belgian" }
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end

puts "Seed data created successfully."
