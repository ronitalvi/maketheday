# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Product.destroy_all
Category.destroy_all
User.destroy_all
Satinal.destroy_all



puts "seeeds"
puts "users"

User.create(email: 'ron@ron.com', password: '123123')

puts "create"

puts "categories"

Category.create(name: 'KENDI MUMLARINI YAP')
Category.create(name: 'KENDI PASPASINI TASARLA')

Category.create(name: 'SULU BOYA ATOLYESI')

Category.create(name: 'PUNCH ATOLYESI')
Category.create(name: 'DOGAL RUJUNU KENDIN YAP')
Category.create(name: 'KENDI CANTANI YAP')
Category.create(name: 'DOGAL SABUN YAPIMI')

Category.create(name: 'KENDI TAKINI TASARLA')

Category.create(name: 'BETON TASARIMINI YAP')

puts "categories DONE"

puts "product"
Product.create(name: '31 mart lolo atolyesi', category_id: 3)
Product.create(name: '31 mart amamam atolyesi', category_id: 2)




puts "product done"

puts "satinal"

Satinal.create(title: 'sabun atolyesi', sku: 'sabun1', photo_url: 'https://picsum.photos/200/300/?blur', location: 'istanbul', price: 1000)
Satinal.create(title: 'saksi atolyesi', sku: 'saksi1', photo_url: 'https://picsum.photos/200/300.jpg', location: 'istanbul', price: 1000)


puts "satinal done"


