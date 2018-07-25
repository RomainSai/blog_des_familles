class Like < ApplicationRecord
	belongs_to :user #like appartient à user
	belongs_to :article #like appartient à article
end
