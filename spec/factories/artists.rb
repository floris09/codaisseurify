FactoryGirl.define do
  factory :artist do
    name    { Faker::Name.name }
    bio { Faker::Lorem.sentence(40) }
  end
end
