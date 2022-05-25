# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(name: 'Star Wars' }, { name: 'Lord of the Rings')
#   Character.create(name: 'Luke', movie: movies.first)
Offer.delete_all
User.delete_all

user_1 = User.create!(name: 'John Doe', email: 'johndoe@gmail.com', password: "123456", phone_number: '000000000')
user_2 = User.create!(name: 'John Smith', email: 'jsmith@gmail.com', password: "123456", phone_number: '111111111')
user_3 = User.create!(name: 'John Black', email: 'johblack@gmail.com', password: "123456", phone_number: '222222222')
user_4 = User.create!(name: 'John White', email: 'johnwhite@gmail.com', password: "123456", phone_number: '333333')
user_5 = User.create!(name: 'John Pink', email: 'johnpink@gmail.com', password: "123456", phone_number: '444444')
user_6 = User.create!(name: 'John Yellow', email: 'johnyellow@gmail.com', password: "123456", phone_number: '555555')

Offer.create!(title: 'Surf lesson', price: '50', duration: '30', description: 'Learn how to stand up on a bord and catch your first waves', location: 'Lisbon', user: user_1)
Offer.create!(title: 'Yoga lesson', price: '50', duration: '30', description: 'Control your body, control your mind', location: 'Lisbon', user: user_2)
Offer.create!(title: 'Vegan Cooking lesson', price: '50', duration: '30', description: 'Lord of the Rings', location: 'Lisbon', user: user_3)
Offer.create!(title: 'Guitar lesson', price: '50', duration: '30', description: 'Learn scales and chords and play your favourite songs', location: 'Lisbon', user: user_4)
Offer.create!(title: 'English lesson', price: '50', duration: '30', description: 'If you struggle with the english vocabulary, I am your guy', location: 'Lisbon', user: user_5)
Offer.create!(title: 'Tennis lesson', price: '50', duration: '30', description: 'Play like a pro', location: 'Lisbon', user: user_6)
