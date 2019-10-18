# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doc.destroy_all


20.times do |i|

  Doc.create({

    title: "Doc n°#{i}",
    content: "esta es la descripcion del doumento",
    photo: "http://lorempixel.com/400/200/sports/#{i}/",
    user_id: 1
  })



end