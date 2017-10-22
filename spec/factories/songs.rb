FactoryGirl.define do
  factory :song do
    name { "liedje" }
    artist { build(:artist) }
  end
end
