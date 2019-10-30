# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
Medic.destroy_all
Member.destroy_all
Medictask.destroy_all
Doc.destroy_all
User.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
ex = ['presion', 'vacunas', 'scanner', 'chequeo', 'vista']
member = ['Cata', 'Marcelo', 'Luis']
date_title = ['examen', 'dentista', 'escaner']
date_content = ['chequeo medico', 'sacar muela del juicio', 'escaner para descartar enfermedades por molestias fisicas']

User.create({
  name: 'Diego Perez',
  email: 'diego@mail.com',
  password: '123123'
})

5.times do |i|
  Doc.create({
    title: "#{ex[i]}",
    content: 'examenes guardados para proximas visitas',
    user_id: User.last
  })
end

3.times do |i|
  Member.create({
    name: "#{member[i]}",
    user_id: User.last
  })
end

Medic.create({ 
  rut: '4.223.332-6', 
  name: 'Dr. Chapatin', 
  speciality: 'General', 
  user_id: User.last
})
Medic.save

3.times do |i|
  Medictask.create({
    title: "#{date_title[i]}",
    content: "#{date_content[i]}",
    date: Date.current,
    user_id: User.last,
    medic_id: Medic.last,
    member_id: Member.all.sample
  })
end
