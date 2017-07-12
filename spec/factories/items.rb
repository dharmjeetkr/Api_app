FactoryGirl.define do
  factory :item do
   # name "MyString"
   # done false
   # todo nil
   name { Faker::StarWars.character }
    done false
    todo_id nil
  end
end
