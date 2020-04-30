# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
city_array = ["Lyon", "Paris", "Montpellier", "Lille", "Marseille"]
city_array.each do |c|
    City.create!(city_name: c)
end

Dogsitter.destroy_all
30.times do
    dogsitter = Dogsitter.create!(
        full_name: Faker::Name.name,
        city: City.all.sample
    )
end

Dog.destroy_all
120.times do
    dog = Dog.create!(
        doggy_name: Faker::Creature::Dog.name,
        city: City.all.sample
    )
end

Stroll.destroy_all
150.times do
    stroll = Stroll.create(date: Faker::Time.forward(days: rand(1..7), period: :day, format: :long), city: City.all.sample)
    stroll.dogsitter = Dogsitter.where("city_id like ?", "%#{stroll.city_id}%").sample
    stroll.save
end


Outing.destroy_all
400.times do
    outing = Outing.create
    outing.city = City.all.sample
    outing.stroll = Stroll.where("city_id like ?", "%#{outing.city_id}%").sample
    outing.dog = Dog.where("city_id like ?", "%#{outing.city_id}%").sample
    outing.save
end

