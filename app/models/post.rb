class Post < ApplicationRecord
	belongs_to :user
	attachment :shop_image
	has_many :post_comments, dependent: :destroy
end
