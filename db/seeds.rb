# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

classifications = ["Local U.S. History", "Medicine", "Fine Arts", "Education", "Naval Science", "Technology", "General U.S. History", "Religion"];
types = ["Fiction", "Nonfiction"];

50.times do 
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        genre_type: types[Faker::Number.between(0,1)],
        classification: classifications[Faker::Number.between(0, classifications.size-1)], 
        year: Faker::Number.between(1800, 2019)
    )
end
