# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user = User.create!(
  username: "Some User",
  email: 'user@example.com',
  password: 'password',
)

other_user = User.create!(
  username: "Other User",
  email: 'other@example.com',
  password: 'password',
)
awesome_user = User.create!(
  username: "Rick",
  email: 'rick@example.com',
  password: '1234',
)
