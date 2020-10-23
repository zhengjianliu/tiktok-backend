# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "reset and finish seeding"

User.destroy_all
Favor.destroy_all

users = [
  {
    userName: "Jayliu1234",
    fullName: "ZHENGJIANLIU",
    password: "12345"
  },
  {
    userName: "heyhey",
    fullName: "heyhey wong",
    password: "54321"
  }
]


users.each do |user|
  User.create!(user)
end


favors = [
  {
    user_id: 1,
    favor_videos:"WcL3jC6UsMA"
  },
  {
    user_id: 2,
    favor_videos: "WcL3jC6UsMA"
  }
]


favors.each do |video|
  Favor.create!(video)
end
