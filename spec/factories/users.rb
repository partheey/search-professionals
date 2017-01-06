FactoryGirl.define do
  factory :user do
    firstname
    lastname
    email
    password "password"
    password_confirmation "password"
    trait :confirmed do
      confirmed_at { Time.current }
    end
  end

  factory :admin, parent: :user, class: 'Admin' do
    type 'Admin'
  end

  factory :customer, parent: :user, class: 'Customer' do
    type 'Customer'
  end

  factory :worker, parent: :user, class: 'Worker' do
    type 'Worker'
  end

  sequence(:email) { |n| "tester_#{n}@test.com" }
  sequence(:firstname) { |n| "tester_fn_#{n}" }
  sequence(:lastname) { |n| "tester_ln_#{n}" }
end
