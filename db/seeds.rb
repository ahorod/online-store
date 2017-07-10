# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all

50.times do |index|
  new_product = Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.between(1, 100),
    origin: Faker::Address.country,
  )
  rand(1..5).times do |review|
    Review.create!(
      author: Faker::Friends.character,
      rating: Faker::Number.between(1, 5),
      content: Faker::Lorem.sentence(15),
      product_id: new_product.id
    )
  end
end
