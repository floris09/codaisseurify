FactoryGirl.define do
  factory :song do
    name { Faker::Lorem.sentence(10) }
    artist { build(:artist) }
  end
end
