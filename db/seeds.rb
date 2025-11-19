puts "Cleaning the database..."
Restaurant.destroy_all
Review.destroy_all


puts "Creating restaurants 1 + review"
restaurant1 = Restaurant.create!(name: "Kuchi", address: "Kant Straße", phone_number: "123123", category: "japanese")
Review.create!(rating: 5, content: "Great food!", restaurant_id: restaurant1.id)


puts "Creating restaurants 2 + review"
restaurant2 = Restaurant.create!(name: "Curry36", address: "Berlin", phone_number: "872834", category: "belgian")
Review.create!(rating: 3, content: "Nice place!", restaurant_id: restaurant2.id)


puts "Creating restaurants 3 + review"
restaurant3 = Restaurant.create!(name: "Peking ente", address: "Mitte", phone_number: "99234", category: "chinese")
Review.create!(rating: 4, content: "Good service!", restaurant_id: restaurant3.id)


puts "Creating restaurants 4 + review"
restaurant4 = Restaurant.create!(name: "Al Posto", address: "Lichterfelde West", phone_number: "7729228", category: "italian")
Review.create!(rating: 2, content: "Could be better!", restaurant_id: restaurant4.id)


puts "Creating restaurants 5 + review"
restaurant5 = Restaurant.create!(name: "Katz Orange", address: "Bergstraße", phone_number: "6565", category: "italian")
Review.create!(rating: 5, content: "Excellent ambiance!", restaurant_id: restaurant5.id)


puts "Created #{Restaurant.count} restaurants."
puts "Created #{Review.count} reviews."
