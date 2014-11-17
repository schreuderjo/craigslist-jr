# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Article.create!(title: Faker::Commerce.product_name,
#                         description: Faker::Lorem.paragraph,
#                         price: Faker::Commerce.price,
#                         location: Faker::Address.city )

sale = Category.create!(name: "For Sale")

10.times do
  sale.articles.create!(title: Faker::Commerce.product_name,
                        description: Faker::Lorem.paragraph,
                        price: Faker::Commerce.price,
                        location: Faker::Address.city)
end

housing = Category.create!(name: "Housing")

10.times do
  housing.articles.create!(title: Faker::Address.street_address,
                        description: Faker::Lorem.paragraph,
                        price: Faker::Commerce.price,
                        location: Faker::Address.city)
end

business = Category.create!(name: "Jobs")

10.times do
  business.articles.create!(title: Faker::Name.title,
                        description: Faker::Lorem.paragraph,
                        price: Faker::Commerce.price,
                        location: Faker::Address.city)
end

