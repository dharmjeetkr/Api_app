FactoryGirl.define do
  factory :todo do
    #title "MyString"
    #created_by "MyString"
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end
