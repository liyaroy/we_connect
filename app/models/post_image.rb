class PostImage < ApplicationRecord
	belongs_to :post

	mount_uploader :image, ImageUploader
end
