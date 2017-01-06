FactoryGirl.define do
  factory :profession_type do
    title {Faker::Job.unique.field}
  end
end
