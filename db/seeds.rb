# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    User.create!(
        name: Faker::Internet.email, 
        password:Faker::Code.imei, 
        last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
end
User.create!(
name: "isuru", 
password:"password", 
isAdmin: true,
last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
User.create!(
name: "isuru1", 
password:"password", 
isAdmin: false,
last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))