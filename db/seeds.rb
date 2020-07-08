# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users =>
isaac = User.create(first_name: 'Isaac', last_name: 'Medina', image: Faker::Company.logo, age: 18, username: 'isaac.meedinaa', email: 'isaac.meedinaa@gmail.com', phone_number: '7732348889', location: 'Chicago, IL 60623', password: '123456')
josue = User.create(first_name: 'Josue', last_name: 'Viramontes', image: Faker::Company.logo, age: 22, username: 'josue.viramontes', email: 'josueviramontes1997@gmail.com', phone_number: '7737379195', location: 'Chicago, IL 60623', password: '123456')
ivan = User.create(first_name: 'Ivan', last_name: 'Aguirre', image: Faker::Company.logo, age: 35, username: 'ivan.aguirre', email: 'ivan.aguirre@gmail.com', phone_number: '7738209910', location: 'Chicago, IL 60623', password: '123456')
ximena = User.create(first_name: 'Ximena', last_name: 'Antunez', image: Faker::Company.logo, age: 20, username: 'ximena.antunez', email: 'ximena.antunez@gmail.com', phone_number: '8150292390', location: 'Chicago, IL 60623', password: '123456')
jorge = User.create(first_name: 'Jorge', last_name: 'Camargo', image: Faker::Company.logo, age: 22, username: 'jorge.camargo', email: 'jorge.camargo@gmail.com', phone_number: '3120384021', location: 'Chicago, IL 60623', password: '123456')
gabriel = User.create(first_name: 'Gabriel', last_name: 'Martinez', image: Faker::Company.logo, age: 50, username: 'gabriel.martinez', email: 'gabriel.martinez@gmail.com', phone_number: '7084501829', location: 'Chicago, IL 60623', password: '123456')

# Businesses =>
trinum_design = Business.create(name: 'Trinum Design, Inc.', image: 'https://i.imgur.com/y2hKJlR.png', business_industry: 'Graphic Design and Print', email: 'contact@trinumdesign.com', phone_number: '7736306644', location: '3410 W 26st Street, Chicago, IL 60623', lat: '41.84454040000001', lng: '-87.71047109999999', password: '123456')
zenyx_llc = Business.create(name: 'Zenyx LLC', image: 'https://i.imgur.com/qhMvZJy.png', business_industry: 'Software', email: 'contact@zenyx.io', phone_number: '7738956654', location: '3410 W 26st Street, Chicago, IL 60623', lat: '41.84454040000001', lng: '-87.71047109999999', password: '123456')

# Deals => 
deal_one = Deal.create(title: '$2.50 Off Custom T-Shirts', content: 'If presented this deal, we will deduct $2.50 from the total price of your custom t-shirt!', code: 'TSHIRTPROMO', image: Faker::Company.logo, begin_date: '07-10-2020', expiration_date: '07-30-2020', business_id: 1)
deal_two = Deal.create(title: '$15 Off a Re-Design of Your Logo', content: 'Take advatange of this amazing offer to redesign your companys logo!', code: '15OFFLOGO', image: Faker::Company.logo, begin_date: '07-04-2020', expiration_date: '08-10-2020', business_id: 1)
deal_three = Deal.create(title: '24 Custom T-Shirts For $120', content: 'For $120 we can design and print 24 custom t-shirts!', code: '120SHIRTS', image: Faker::Company.logo, begin_date: '07-10-2020', expiration_date: '07-18-2020', business_id: 1)
deal_four = Deal.create(title: 'Free Website Maintenance', content: 'With this limited time deal, you can get a website with free monthly maintenance for 3 months!', code: 'FREEMAINTENANCE', image: Faker::Company.logo, begin_date: '07-16-2020', expiration_date: '08-01-2020', business_id: 2)
deal_five = Deal.create(title: '50% Off Total Domain Price', content: 'After acquiring our web design services, we will deduce 50% off the total price of your domain!', code: '50%OFFDOMAIN', image: Faker::Company.logo, begin_date: '07-18-2020', expiration_date: '08-18-2020', business_id: 2)

# Comments => 
20.times do
    Comment.create(content: Faker::Quote.famous_last_words, user: User.all.sample, deal: Deal.all.sample)
end

# Likes =>
# Like.create(user_id: 1, business_id: 1, deal_id: 1)
# Like.create(user_id: 2, business_id: 2, deal_id: 2)
# Like.create(user_id: 1, business_id: 1, deal_id: 3)
# Like.create(user_id: 2, business_id: 2, deal_id: 4)
# Like.create(user_id: 1, business_id: 1, deal_id: 5)