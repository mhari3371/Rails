class Article < ApplicationRecord
	belongs_to :User
	validates :ArticleId ,presence: true , length: {minimum: 3 }
end
