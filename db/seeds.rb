require 'faker'

10.times do #génère 10 fois un nouveau prenom, nom , et mail imaginaire
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

5.times do #génère 5 fois une fausse catégorie
	category = Category.create(name: Faker::Coffee.variety)
end

10.times do #génère 10 fois un faux titre, un faux text, et un user_ID aléatoire
	article = Article.create(title: Faker::Hacker.noun, content: Faker::Hacker.say_something_smart, user_id: Faker::Number.between(1, 10), category_id: Faker::Number.between(1, 5))
end

15.times do #génère un faux commentaire, un ID imaginaire, et associe un article_ID aléatoire
	comment = Comment.create(content: Faker::Community.quotes, user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
end

15.times do #génère un article_ID et un user_ID aléatoire
	like = Like.create(article_id: Faker::Number.between(1, 10), user_id: Faker::Number.between(1, 10))
end