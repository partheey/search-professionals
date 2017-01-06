FactoryGirl.define do
  factory :profession do
    name Faker::Job.unique.title
    association :profession_type
  end
end
