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