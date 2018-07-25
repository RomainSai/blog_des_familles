class User < ApplicationRecord
	has_many :articles #comment à plusieurs articles
	has_many :comments #comment à plusieurs comments
	has_many :likes #comment à plusieurs likes
end
