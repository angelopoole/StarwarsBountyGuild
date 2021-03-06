# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hunter.destroy_all
Contract.destroy_all
HunterContract.destroy_all
Faker::UniqueGenerator.clear

20.times do
   h = Hunter.create(name: Faker::Movies::StarWars.unique.character, image_url: Faker::Avatar.unique.image, password: Faker::Game.title, planet: Faker::Movies::StarWars.planet, species: Faker::Movies::StarWars.specie, quote: Faker::Movies::StarWars.quote)
    h.update(contracts_completed: rand(0...30), contracts_failed: rand(0...30))
end


20.times do
    Contract.create(species: Faker::Movies::StarWars.specie, last_seen: Faker::Movies::StarWars.planet, name: Faker::Movies::StarWars.unique.character, image_url: Faker::Avatar.unique.image, BountyAmount: rand(500...100000), drafter: Faker::Movies::StarWars.droid)
 end


20.times do
    HunterContract.create(hunter_id: Hunter.all.sample.id, contract_id: Contract.all.sample.id)
 end