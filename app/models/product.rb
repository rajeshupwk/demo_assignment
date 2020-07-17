class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	serialize :image, JSON

	belongs_to :user, optional: true
	belongs_to :variation, optional: true

	validates :title, :description, :SKU, :price, :quantity, presence: true
	validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
	validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed" }
	validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

	COLOR = %w{ Blue Red }
	SIZE = %w{ Small Medium Large }
	PATTERN = %w{ Striped Solid }
	Shape = %w{ Oval Round}

end
