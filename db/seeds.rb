# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#books = Book.create([{ title: 'Pride and Prejudice' }, { author: 'Jane Austen' }, { genre: 'Classic Regency novel'}, { classification: 'Fine Arts'}, { type: 'Fiction' }, { year: 1813}])


require 'faker'
include Faker

classification = Array[
    "General Works - encyclopedias ",
    "Philosophy, Psychology, Religion ",
    "History - Auxiliary Sciences ",
    "History (except American) ",
    "General U.S. History ",
    "Local U.S. History ",
    "Geography, Anthropology, Recreation ",
    "Social Sciences U ",
    "Political Science V ",
    "Law Z - Bibliography and Library Science ",
    "Education ",
    "Music ",
    "Fine Arts ",
    "Language and Literature ",
    "Science ",
    "Medicine ",
    "Agriculture ",
    "Technology ",
    "Military ",
    "Naval Science ",
    "Bibliography and Library Science"
]

type = Array["Fiction", "Nonfiction"]

50.times do 
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    classification: classification.sample,
    type: type.sample,
    year: Faker::Number.positive(from=1800, to=2000)
  )
end 