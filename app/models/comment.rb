class Comment < ApplicationRecord
	belongs_to :article #comment appartient à article
	belongs_to :user #comment appartient à user
end
