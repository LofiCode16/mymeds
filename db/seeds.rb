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

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
ex = ['presion', 'vacunas', 'scanner', 'chequeo', 'vista']
date_title = ['examen', 'dentista', 'escaner']
date_content = ['chequeo medico', 'sacar muela del juicio', 'escaner para descartar enfermedades por molestias fisicas']

15.times do |i|
  User.create({
    name: "Diego#{i}",
    email: "diego#{i}@mail.com",
    password: '123123',
    created_at: Faker::Number.number(digits: 1).to_i.day.ago
  })
end



60.times do |i|
  Doc.create({
    title: "#{ex.sample}",
    content: 'examenes guardados para proximas visitas',
    user_id: User.all.sample.id,
    created_at: Faker::Number.number(digits: 1).to_i.day.ago
  })
end

45.times do |i|
  Member.create({
    name: Faker::Name.name,
    user_id: User.all.sample.id,    
    created_at: Faker::Number.number(digits: 1).to_i.day.ago
  })
end

13.times do 
  Medic.create({ 
    rut: Faker::ChileRut.full_rut, 
    name: Faker::Name.name, 
    speciality: 'General', 
    user_id: User.all.sample.id,    
    created_at: Faker::Number.number(digits: 1).to_i.day.ago
  })
end


45.times do |i|
  Medictask.create({
    title: "#{date_title.sample}",
    content: "#{date_content.sample}",
    date: Date.current,
    user_id: User.all.sample.id,
    medic_id: Medic.last.id,
    member_id: Member.all.sample.id,    
    created_at: Faker::Number.number(digits: 1).to_i.day.ago
  })
end
