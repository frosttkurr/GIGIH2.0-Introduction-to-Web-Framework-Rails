# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
CategoryItem.create(name: 'Main Food')
CategoryItem.create(name: 'Dessert')
CategoryItem.create(name: 'Beverage')

Item.create(name: 'Burger', price: '25.000', category_id: 1)
Item.create(name: 'Pizza', price: '80.000', category_id: 1)
Item.create(name: 'Coke', price: '15.000', category_id: 3)
Item.create(name: 'Salad', price: '15.000', category_id: 2)