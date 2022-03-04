FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Lorem.sentence }
    temperature { Faker::Number.between(from: 100, to: 300) }
    brew_time { Faker::Number.between(from: 30, to: 300) }
  end
end
