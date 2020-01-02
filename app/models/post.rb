class Post < ApplicationRecord
	belongs_to :user
	has_many :post_images

	acts_as_votable
end
