# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
offers = Offer.create([{ title: 'Lord of the Rings' }, { price: '50' }, { duration: '30' }, { description: 'Lord of the Rings' },  { location: 'lisbon' }])
offers = Offer.create([{ title: 'Lord of the Rings II' }, { price: '50' }, { duration: '30' }, { description: 'Lord of the Rings' },  { location: 'lisbon' }])
offers = Offer.create([{ title: 'Lord of the Rings III' }, { price: '50' }, { duration: '30' }, { description: 'Lord of the Rings' },  { location: 'lisbon' }])
offers = Offer.create([{ title: 'Blade' }, { price: '50' }, { duration: '30' }, { description: 'Vampires' }, { location: 'lisbon' }])
offers = Offer.create([{ title: 'Blade II' }, { price: '50' }, { duration: '30' }, { description: 'Vampires' }, { location: 'lisbon' }])
offers = Offer.create([{ title: 'Blade III' }, { price: '50' }, { duration: '30' }, { description: 'Vampires' }, { location: 'lisbon' }])
users = User.create([{ name: 'John Doe' }, { email: 'johndoe@gmail.com' }, { phone_number: '000000000' }])
users = User.create([{ name: 'John Smith' }, { email: 'johnsmith@gmail.com' }, { phone_number: '111111111' }])
users = User.create([{ name: 'John Black' }, { email: 'johnblack@gmail.com' }, { phone_number: '222222222' }])
users = User.create([{ name: 'John White' }, { email: 'johnwhite@gmail.com' }, { phone_number: '333333' }])
users = User.create([{ name: 'John Pink' }, { email: 'johnpink@gmail.com' }, { phone_number: '444444' }])
users = User.create([{ name: 'John Yellow' }, { email: 'johnyellow@gmail.com' }, { phone_number: '555555' }])
