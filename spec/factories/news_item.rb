require 'faker'

FactoryGirl.define do
  factory :news_item do
    name { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
  end
end
