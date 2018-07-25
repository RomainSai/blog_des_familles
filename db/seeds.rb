require 'faker'

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
	article = Article.create(title: Faker::Hacker.noun, content: Faker::Hacker.say_something_smart, user_id: Faker::Number.between(1, 10))
end

15.times do
	comment = Comment.create(content: Faker::Community.quotes, user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
	like = Like.create(article_id: Faker::Number.between(1, 10), user_id: Faker::Number.between(1, 10))
end

5.times do
	category = Category.create(name: Faker::Coffee.variety, article_id: Faker::Number.between(1, 10))
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
