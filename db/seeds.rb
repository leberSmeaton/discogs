# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = ["Rock", "Power Metal", "Pop", "Hip-Hop", "Electronic", "Metal", "Punk", "Country", "Classical", "Jazz"]

if Genre.count == 0
    genres.each do |genre|
        Genre.create(name: genre)
        puts "Created #{genre} genre"
    end
end