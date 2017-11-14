# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create!(nickname: "Example User",
#              email: "example@railstutorial.org",
#              password: "foobar",
#              password_confirmation: "foobar",
# )
User.create!(nickname:  "Alex Didenko",
             email: "alex.didenko753@gmail.com",
             password:              "qwerty",
             password_confirmation: "qwerty",
             admin: true)

20.times do |n|
  title = Faker::Hacker.say_something_smart
  text = Faker::Lorem.sentence(7)
  theme = 'life'

  Post.create!(title: title,
               text: text,
               theme: theme)
end

20.times do |n|
  title = Faker::Hacker.say_something_smart
  text = Faker::Lorem.sentence(7)
  theme = 'work'

  Post.create!(title: title,
               text: text,
               theme: theme)
end