FactoryGirl.define do
  factory :user do |u|
    u.email Faker::Internet.email
    u.password 'funkypass'
    u.password_confirmation 'funkypass'
  end
  
  factory :post do |u|
    u.association :user
    u.title 'test'
    u.post 'test'
  end
end