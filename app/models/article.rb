class Article < ApplicationRecord
	belongs_to :user #article appartient à User
	belongs_to :category #category appartient à User
	has_many :comments #Article à plusieurs comments
	has_many :likes #article à plusieurs likes
end
