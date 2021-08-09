FactoryBot.define do
  factory :user do
    nickname  {Faker::Name.initials}
    email     {Faker::Internet.free_email}
    password  {Faker::Lorem.characters(number: 6, min_alpha: 3, min_numeric: 3)}
    password_confirmation {password}
  end
end