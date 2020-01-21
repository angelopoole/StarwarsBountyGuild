# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hunter.destroy_all

20.times do
   h = Hunter.create(name: Faker::Movies::StarWars.characters, planet: Faker::Movies::StarWars.planet, species: Faker::Movies::StarWars.specie, quote: Faker::Movies::StarWars.quote)
    h.update(contracts_completed: rand(0...30), contracts_failed: rand(0...30))
end