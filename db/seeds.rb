# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p_1 = Product.new(price: 10, stock: 100, description: 'very good product', name: "Produit 1")
p_1.save!
puts 'One product created'

p_2 = Product.new(price: 20, stock: 200, description: 'good product', name: "Produit 2")
p_2.save!
puts 'Two product created'

p_3 = Product.new(price: 30, stock: 300, description: 'excellent product', name: "Produit 3")
p_3.save!
puts 'Three product created'
