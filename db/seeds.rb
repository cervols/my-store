# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FactoryBot.create(:user, email: 'admin@admin.com', password: '1qaz2wsx', role: 'admin')
FactoryBot.create(:user, email: 'user1@mail.com', password: '1qaz2wsx', role: 'user')

FactoryBot.create(:item, name: 'item1', description: 'item1 description', price: 100)
FactoryBot.create(:item, name: 'item2', description: 'item2 description', price: 200)
FactoryBot.create(:item, name: 'item3', description: 'item3 description', price: 150)

# FactoryBot.create_list(:item, 10)
# FactoryBot.create_list(:user, 5)
