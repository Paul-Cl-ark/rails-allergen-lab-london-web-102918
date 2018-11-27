# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.destroy_all
User.destroy_all
Ingredient.destroy_all

bob = User.create(name: "Bob")
mary = User.create(name: "Mary")
jim = User.create(name: "Jim")
pete = User.create(name: "Pete")
sally = User.create(name: "Sally")

flour = Ingredient.create(name: "Flour")
eggs = Ingredient.create(name: "Eggs")
peanuts = Ingredient.create(name: "Peanuts")
milk = Ingredient.create(name: "Milk")
sugar = Ingredient.create(name: "Sugar")

cake = Recipe.new(name: "Cake")
cake.user = bob
cake.ingredients << [flour, eggs, milk, sugar]
cake.save

crepes = Recipe.new(name: "Crepes")
crepes.user = bob
crepes.ingredients << [flour, eggs, milk, sugar]
crepes.save

pancake = Recipe.new(name: "Pancake")
pancake.user = mary
pancake.ingredients << [flour, eggs, milk, sugar]
pancake.save

bread = Recipe.new(name: "Bread")
bread.user = jim
bread.ingredients << [flour, eggs, milk]
bread.save

muffin = Recipe.new(name: "Muffin")
muffin.user = pete
muffin.ingredients << [flour, eggs, milk, sugar, peanuts]
muffin.save

bob.ingredients << peanuts
mary.ingredients << [eggs, sugar]
pete.ingredients << peanuts
