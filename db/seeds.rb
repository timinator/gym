# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(name: 'Thomas', email: 'thomas@a.com', password: '1', password_confirmation: '1', gender: 'male', workout_goal: 'WEIGHTS', phone: '6469208813')
User.create(name: 'Aaron', email: 'aaron@a.com', password: '1', password_confirmation: '1', gender: 'male', workout_goal: 'CARDIO', phone: '2037479716')
User.create(name: 'Zahra', email: 'zahra@a.com', password: '1', password_confirmation: '1', gender: 'female', workout_goal: 'TONING', phone: '6462094745')
User.create(name: 'Diana', email: 'diana@a.com', password: '1', password_confirmation: '1', gender: 'female', workout_goal: 'TONING', phone: '6469208813')
User.create(name: 'Bob', email: 'bob@a.com', password: '1', password_confirmation: '1', gender: 'male', workout_goal: 'CARDIO', phone: '6469208813')
User.create(name: 'Joe', email: 'joe@a.com', password: '1', password_confirmation: '1', gender: 'male', workout_goal: 'WEIGHTS', phone: '6469208813')

Record.delete_all
# Thomas' Record
Record.create(weight: 150.0, run: 5.0, pushups: 20, user_id: 1, created_at: "2012-12-01 02:25:31", updated_at: "2012-12-01 02:25:31")
Record.create(weight: 155.0, run: 4.7, pushups: 22, user_id: 1, created_at: "2012-12-03 02:25:31", updated_at: "2012-12-03 02:25:31")
Record.create(weight: 155.0, run: 4.8, pushups: 32, user_id: 1, created_at: "2012-12-05 02:25:31", updated_at: "2012-12-05 02:25:31")
Record.create(weight: 158.0, run: 4.2, pushups: 35, user_id: 1, created_at: "2012-12-07 02:25:31", updated_at: "2012-12-07 02:25:31")
Record.create(weight: 160.0, run: 3.7, pushups: 32, user_id: 1, created_at: "2012-12-09 02:25:31", updated_at: "2012-12-09 02:25:31")
Record.create(weight: 162.0, run: 4.9, pushups: 40, user_id: 1, created_at: "2012-12-11 02:25:31", updated_at: "2012-12-11 02:25:31")
Record.create(weight: 164.0, run: 3.4, pushups: 48, user_id: 1, created_at: "2012-12-13 02:25:31", updated_at: "2012-12-13 02:25:31")
Record.create(weight: 169.0, run: 3.0, pushups: 50, user_id: 1, created_at: "2012-12-14 02:25:31", updated_at: "2012-12-14 02:25:31")

Company.create(name: 'Equinox', address: '897 Broadway', zip_code: '10003', primary_name: 'Mr. Manager')

Motivation.delete_all
Motivation.create(rating: 1, quote: "Be kind whenever possible. It is always possible.")
Motivation.create(rating: 3, quote: "If you're going through hell, keep going.")
Motivation.create(rating: 3, quote: "Believe in yourself! Have faith in your abilities!")
Motivation.create(rating: 2, quote: "Always do your best. What you plant now, you will harvest later.")
Motivation.create(rating: 3, quote: "Act as if what you do makes a difference. It does.")
Motivation.create(rating: 1, quote: "Either you run the day or the day runs you.")
Motivation.create(rating: 3, quote: "Strength does not come from physical capacity. It comes from an indomitable will.")
Motivation.create(rating: 2, quote: "Motivation is what gets you started. Habit is what keeps you going.")
Motivation.create(rating: 1, quote: "The secret of getting ahead is getting started.")
