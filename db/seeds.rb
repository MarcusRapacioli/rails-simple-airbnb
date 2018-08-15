puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = []
  5.times do
    flats_attributes << {
      name: Faker::Dessert.unique.topping,
      address: Faker::Address.street_address,
      description: Faker::Lorem.paragraph,
      price_per_night: [50, 65, 80, 95, 100].sample,
      number_of_guests: [2, 3, 4].sample
  }
  end
Flat.create!(flats_attributes)
puts 'Finished!'
