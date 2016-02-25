require 'faker'

FactoryGirl.define do
  factory :production do
    production_category
    name { Faker::Lorem.sentence }
    structure { Faker::Lorem.paragraph }
    properties { Faker::Lorem.paragraph }
    context { Faker::Lorem.paragraph }
    use { Faker::Lorem.paragraph }
    contraindications { Faker::Lorem.paragraph }
    name { Faker::Lorem.paragraph }
    packaging { Faker::Lorem.paragraph }
    code { Faker::Lorem.word }
  end
end
