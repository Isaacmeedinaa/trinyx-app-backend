# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users =>
isaac = User.create(first_name: 'Isaac', last_name: 'Medina', image: Faker::Company.logo, age: 18, username: 'isaac.meedinaa', email: 'isaac.meedinaa@gmail.com', phone_number: '7732348889', location: 'Chicago, IL 60623', password: '123456')
josue = User.create(first_name: 'Josue', last_name: 'Viramontes', image: Faker::Company.logo, age: 22, username: 'thebboy', email: 'josueviramontes1997@gmail.com', phone_number: '7737379195', location: 'Chicago, IL 60623', password: '123456')

# Businesses =>
business_one = Business.create(name: Faker::Company.name, image: Faker::Company.logo, business_industry: Faker::Company.industry, email: 'business_one@gmail.com', phone_number: '18005403203', location: '3410 W 26st Street, Chicago, IL 60623', lat: '41.84454040000001', lng: '-87.71047109999999', password: '123456')
business_two = Business.create(name: Faker::Company.name, image: Faker::Company.logo, business_industry: Faker::Company.industry, email: 'business_two@gmail.com', phone_number: '18008590190', location: '3410 W 26st Street, Chicago, IL 60623', lat: '41.84454040000001', lng: '-87.71047109999999', password: '123456')

# Deals => 
deal_one = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business_id: 1)
deal_two = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business_id: 2)
deal_three = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business_id: 1)
deal_four = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business_id: 2)
deal_five = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business_id: 1)

# Comments => 
20.times do
    Comment.create(content: Faker::Quote.famous_last_words, user: User.all.sample, deal: Deal.all.sample)
end

# Likes =>
Like.create(user_id: 1, business_id: 1, deal_id: 1)
Like.create(user_id: 2, business_id: 2, deal_id: 2)
Like.create(user_id: 1, business_id: 1, deal_id: 3)
Like.create(user_id: 2, business_id: 2, deal_id: 4)
Like.create(user_id: 1, business_id: 1, deal_id: 5)