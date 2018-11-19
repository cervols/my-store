FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    role "user"
    email { Faker::Internet.email }

    trait :admin do
      role "admin"
    end

    trait :with_cart do
      after :create do |user|
        create :cart, user: user
      end
    end
  end
end
