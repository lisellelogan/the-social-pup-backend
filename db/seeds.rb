# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Friendship.destroy_all

beemo = User.create(email: 'beemo@beemo.com', password: 'beemo', pup_name: 'beemo', pup_age: 9, pup_breed: 'corgi', pup_fully_vaccinated: true, pup_location: 'queens, ny', pup_personality: 'crazy', owner_name: 'lis')
seymour = User.create(email: 'seymour@seymour.com', password: 'seymour', pup_name: 'seymour', pup_age: 5, pup_breed: 'beagle', pup_fully_vaccinated: true, pup_location: 'virginia beach, va', pup_personality: 'calm', owner_name: 'london')
charlie = User.create(email: 'charlie@charlie.com', password: 'charlie', pup_name: 'charlie', pup_age: 1, pup_breed: 'goldendoodle', pup_fully_vaccinated: true, pup_location: 'chesapeake, va', pup_personality: 'anxious', owner_name: 'justin')

Friendship.create_mutual_friendship(beemo.id, seymour.id)
Friendship.create_mutual_friendship(beemo.id, charlie.id)
Friendship.create_mutual_friendship(seymour.id, charlie.id)