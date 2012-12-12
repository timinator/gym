# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(name: 'Thomas', email: 'thomas@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Thomas', gender: 'male', height: '70', weight: '165', workout_goal: 'weights', body_fat: '10%', phone: '6469208813')
User.create(name: 'Aaron', email: 'aaron@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Aaron', gender: 'male', height: '70', weight: '140', workout_goal: 'cardio', body_fat: '13%', phone: '2037479716')
User.create(name: 'Zahra', email: 'zahra@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Zahra', gender: 'female', height: '65', weight: '100', workout_goal: 'toning', body_fat: '23%', phone: '6462094745')
User.create(name: 'Diana', email: 'diana@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Diana', gender: 'female', height: '60', weight: '115', workout_goal: 'toning', body_fat: '32%', phone: '6469208813')
User.create(name: 'Bob', email: 'bob@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Bob', gender: 'male', height: '60', weight: '165', workout_goal: 'cardio', body_fat: '12%', phone: '6469208813')
User.create(name: 'Joe', email: 'joe@a.com', password: '1', password_confirmation: '1', description: 'hello, my name is Joe', gender: 'male', height: '75', weight: '205', workout_goal: 'weights', body_fat: '8%', phone: '6469208813')

Company.create(name: 'Equinox', address: '897 Broadway', zip_code: '10003', primary_name: 'Mr. Manager')

Motivation.delete_all
Motivation.create(rating: 1, quote: "Be kind whenever possible. It is always possible.")
Motivation.create(rating: 3, quote: "If you're going through hell, keep going.")
Motivation.create(rating: 3, quote: "Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.")
Motivation.create(rating: 2, quote: "Always do your best. What you plant now, you will harvest later.")
Motivation.create(rating: 3, quote: "Act as if what you do makes a difference. It does.")
Motivation.create(rating: 1, quote: "Either you run the day or the day runs you.")
Motivation.create(rating: 3, quote: "Strength does not come from physical capacity. It comes from an indomitable will.")
Motivation.create(rating: 2, quote: "Motivation is what gets you started. Habit is what keeps you going.")
Motivation.create(rating: 1, quote: "The secret of getting ahead is getting started.")
