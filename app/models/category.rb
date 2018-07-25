class Category < ApplicationRecord
	has_many :articles #category à plusieurs articles
end
