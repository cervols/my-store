FactoryBot.define do
  factory :item do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    price { Faker::Number.between(50, 10_000) }
  end
end
