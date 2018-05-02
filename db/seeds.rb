Product.destroy_all

10.times do |index|
  Product.create!(name: Faker::Ancient.primordial,
              price: Faker::Number.decimal(2))
end


p "Created #{Product.count} products"
