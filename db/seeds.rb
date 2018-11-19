require 'factory_bot_rails'
require 'faker'


FactoryBot.create(:user, :admin, email: 'admin@admin.com', password: 'somepass')

user = FactoryBot.create(:user, :with_cart, email: 'user@user.com', password: 'somepass')
user2 = FactoryBot.create(:user, :with_cart, password: 'somepass')

FactoryBot.create_list(:item, 5)

items = Item.all
Position.create(item_id: items[0].id, cart_id: user.cart.id, quantity: 5)
Position.create(item_id: items[1].id, cart_id: user.cart.id, quantity: 1)
Position.create(item_id: items[2].id, cart_id: user.cart.id, quantity: 10)

Position.create(item_id: items[0].id, cart_id: user2.cart.id, quantity: 2)
Position.create(item_id: items[3].id, cart_id: user2.cart.id, quantity: 5)
