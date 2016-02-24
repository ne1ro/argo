require 'faker'

FactoryGirl.define do
  factory :production_category do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    context { Faker::Lorem.paragraph }
  end
end
