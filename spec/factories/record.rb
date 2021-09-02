FactoryBot.define do
  factory :record do
    times { rand(1..10) }
    list { create(:list) }
    user { create(:user) }
  end
end
