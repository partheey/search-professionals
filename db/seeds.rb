# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
profession_types = []
20.times{profession_types << {title: Faker::Job.unique.field}}
profession_types = ProfessionType.create(profession_types)

professions = []
100.times{professions << {name: Faker::Job.unique.title, profession_type: profession_types.sample}}
professions = Profession.create(professions)

workers = []
1000.times{ workers << {firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.unique.email, password: 'password', password_confirmation: 'password', confirmed_at: Time.now, professions: professions.sample(rand 6) }}
Worker.create(workers)

c = Customer.create(firstname: 'Customer', lastname: 'Sample', email: 'sample@customer.app', password: 'password', password_confirmation: 'password', confirmed_at: Time.now)

p "Successfully seeded the sample data. You login as customer using the follwing credentials. Email: #{c.email}, Password: password "