# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create Powers
# Create Powers
super_strength = Power.create(name: 'super strength', description: 'gives the wielder super-human strengths')
flight = Power.create(name: 'flight', description: 'gives the wielder the ability to fly through the skies at supersonic speed')

# Create Heroes
trinity = Hero.create(name: 'Trinity Shalom', super_name: 'Ms. Marvel')
favour = Hero.create(name: 'Favour Rabecca', super_name: 'Squirrel Girl')
precious = Hero.create(name: 'Precious Rehema', super_name: 'Spider-Gwen')

# Associate Powers with Heroes
HeroPower.create(hero: trinity, power: super_strength, strength: 'Strong')
HeroPower.create(hero: trinity, power: flight, strength: 'Average')

HeroPower.create(hero: favour, power: flight, strength: 'Strong')

HeroPower.create(hero: precious, power: super_strength, strength: 'Average')
HeroPower.create(hero: precious, power: flight, strength: 'Strong')
