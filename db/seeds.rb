  # This file should ensure the existence of records required to run the application in every environment (production,
  # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
  # Example:
  #
  #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
  #     MovieGenre.find_or_create_by!(name: genre_name)
  #   end
  Restaurant.destroy_all
  Restaurant.create(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31", category: "french")
  Restaurant.create(name: "Le Meurice", address: "228 Rue de la Paix, 75008 Paris", phone_number: "01 42 68 18 18", category: "french")
  Review.create(rating: 5, content: "Excellent restaurant", restaurant_id: 1)
  Review.create(rating: 4, content: "Good restaurant", restaurant_id: 2)
  Review.create(rating: 3, content: "Average restaurant", restaurant_id: 3)
  Review.create(rating: 2, content: "Bad restaurant", restaurant_id: 4)
  Review.create(rating: 1, content: "Terrible restaurant", restaurant_id: 5)

  puts "Restaurants and reviews created: #{Restaurant.count} restaurants and #{Review.count} reviews"
