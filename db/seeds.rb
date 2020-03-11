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
user = User.all.last
company = Company.all.last
puts 'Creating subscriptions...'
Subscription.create(user: user, company: company, title: 'Netflix', price: 8.99, renewal_date: Date.parse("2020/03/13"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'Spotify', price: 9.99, renewal_date: Date.parse("2020/03/09"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'Amazon', price: 71.60, renewal_date: Date.parse("2020/02/22"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'Apple', price: 9.99, renewal_date: Date.parse("2020/02/16"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'Audible', price: 8.99, renewal_date: Date.parse("2020/02/13"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'YouTube', price: 4.99, renewal_date: Date.parse("2020/02/13"), creation_date: Date.today)
Subscription.create(user: user, company: company, title: 'Github', price: 10.99, renewal_date: Date.parse("2020/02/13"), creation_date: Date.today)
puts 'Seeding done'
