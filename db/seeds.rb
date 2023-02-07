# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Start seeding'
puts 'Deleting old data...'
Subscription.destroy_all
Company.destroy_all
User.destroy_all

user = User.create(email: "c@gmail.com", password: "carl11")

company1 = Company.create(name: "Netflix")
company2 = Company.create(name: "Spotify")
company3 = Company.create(name: "Soundcloud")
company4 = Company.create(name: "Apple")
company5 = Company.create(name: "Audible")
company6 = Company.create(name: "YouTube")
company7 = Company.create(name: "GitHub")

# company = Company.all.last
puts 'Creating subscriptions...'
Subscription.create(user: user, company: company1, title: 'Netflix', price: 8.99, renewal_date: Date.parse("2020/07/13"), creation_date: Date.today)
Subscription.create(user: user, company: company2, title: 'Spotify', price: 9.99, renewal_date: Date.parse("2020/07/14"), creation_date: Date.today)
Subscription.create(user: user, company: company3, title: 'Soundcloud', price: 5.99, renewal_date: Date.parse("2020/07/21"), creation_date: Date.today)
Subscription.create(user: user, company: company4, title: 'Apple Music', price: 9.99, renewal_date: Date.parse("2020/08/1"), creation_date: Date.today)
Subscription.create(user: user, company: company5, title: 'Audible', price: 8.99, renewal_date: Date.parse("2020/08/1"), creation_date: Date.today)
Subscription.create(user: user, company: company6, title: 'YouTube Premium', price: 4.99, renewal_date: Date.parse("2020/08/1"), creation_date: Date.today)
Subscription.create(user: user, company: company7, title: 'Github', price: 10.99, renewal_date: Date.parse("2020/08/3"), creation_date: Date.today)
puts 'Seeding done'

