FactoryBot.define do
  factory :list do
    title { Faker::DcComics.heroine }
    icon { Faker::Creature::Animal.name }
  end
end
