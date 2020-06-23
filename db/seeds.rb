# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users =>
isaac = User.create(first_name: 'Isaac', last_name: 'Medina', age: 18, username: 'isaac.meedinaa', email: 'isaac.meedinaa@gmail.com', phone_number: '7732348889', location: 'Chicago, IL 60623', password: '123')
josue = User.create(first_name: 'Josue', last_name: 'Viramontes', age: 22, username: 'thebboy', email: 'josueviramontes1997@gmail.com', phone_number: '7737379195', location: 'Chicago, IL 60623', password: '123')

# Businesses =>
business_one = Business.create(name: Faker::Company.name, business_industry: Faker::Company.industry, email: 'business_one@gmail.com', phone_number: '18005403203', location: 'Chicago, IL 60623', password: '123')
business_two = Business.create(name: Faker::Company.name, business_industry: Faker::Company.industry, email: 'business_two@gmail.com', phone_number: '18008590190', location: 'Cicero, IL 60804', password: '123')

# Deals => 
deal_one = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business: business_one, user: isaac)
deal_two = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business: business_two, user: josue)
deal_three = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business: business_one, user: isaac)
deal_four = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business: business_two, user: josue)
deal_five = Deal.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, code: Faker::Code.nric, image: Faker::Company.logo, begin_date: '06-23-2020', expiration_date: '07-23-2020', business: business_one, user: isaac)

# Comments => 
20.times do
    Comment.create(content: Faker::Quote.famous_last_words, user: User.all.sample, deal: Deal.all.sample)
end

# Likes =>
Like.create(user: isaac, business: business_one, deal: deal_one)
Like.create(user: josue, business: business_two, deal: deal_two)
Like.create(user: isaac, business: business_one, deal: deal_three)
Like.create(user: josue, business: business_two, deal: deal_four)
Like.create(user: isaac, business: business_one, deal: deal_five)