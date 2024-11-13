# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# On clean
Restaurant.destroy_all


# On crée les resto + reviews
resto1 = Restaurant.new(name: "Epicure", category: "french", address: "75008 Paris")
resto1.save!



resto2 = Restaurant.new(name: "Great wall", category: "chinese", address: "44100 Nantes")
resto2.save!

resto3 = Restaurant.new(name: "Mario Pizza", category: "italian", address: "76600 Le Havre")
resto3.save!

resto4 = Restaurant.new(name: "Best sushi", category: "japanese", address: "44000 Nantes")
resto4.save!

resto5 = Restaurant.new(name: "Dédé la frite", category: "belgian", address: "44200 Nantes")
resto5.save!
