# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photo1 = Photo.create(
  title: "the michi",
  photo_url: "https://pixabay.com/photos/cat-animal-cat-s-eyes-eyes-pet-1285634/"
)

comment1 = Comment.create(content: "el puto amo", owner: "Person 1", photo_id: photo1.id)
comment2 = Comment.create(content: "un dios", owner: "Person 2", photo_id: photo1.id)
comment3 = Comment.create(content: "su majestad", owner: "Person 3", photo_id: photo1.id)
comment4 = Comment.create(content: "humano puto", owner: "Person 4", photo_id: photo1.id)