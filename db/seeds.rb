puts "creating db"
Restaurant.destroy_all
Review.destroy_all

10.times do
  Restaurant.create!(
    name: Faker::Nation.capital_city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    address: Faker::Address.full_address)
end

50.times do
  Review.create!(
    content: Faker::Lebowski.quote,
    rating: (1..5).to_a.sample,
    restaurant_id: (1..10).to_a.sample)
end
puts "Done!"
