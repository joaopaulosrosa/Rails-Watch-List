# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
puts 'deleting movies'
Movie.destroy_all

100.times do
  puts 'creating new movie'
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    rating: rand(1.0..10.0).round(1)
  )
end

puts '50 movies created!'
