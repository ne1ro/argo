require 'faker'

FactoryGirl.define do
  factory :article do
    name { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    description { Faker::Lorem.paragraph }
  end
end
