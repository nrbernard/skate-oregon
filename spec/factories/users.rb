# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test#{((Random.rand * 1000).floor)}@gmail.com"
    password "testtest"
  end
end
