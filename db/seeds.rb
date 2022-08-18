# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB'
Product.destroy_all
Status.destroy_all
puts 'DB Cleaned'

puts 'Creating categories...'
cat = Category.create(name: 'cat1')

product_1 = Product.create(
  name: 'Product 1',
  sku: 'p1',
  categories_id: cat.id,
  stock: 30,
  description: 'Un produit extraordinaire',
  price_cents:400)
puts 'One product created'

product_2 = Product.create(
  name: 'Product 2',
  sku: 'p2',
  categories_id: cat.id,
  stock: 30,
  description: 'Un produit extraordinaire',
  price_cents:400)
puts 'One product created'
status_1 = Status.create(name: 'en cours de validation')
