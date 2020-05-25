class Post < ApplicationRecord
	belongs_to :post, optional: true
	attachment :shop_image
	geocoded_by :shop_address
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	def favorited_by?(post)
        favorites.where(post_id: post.id).exists?
    end
end
