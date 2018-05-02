Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Book.title,
              price: Faker::Number.decimal(2))
end


p "Created #{Product.count} products"
