class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :image, presence: true
	validates :description, presence: true
	validates :categoryId, presence: true
	validates :manufacturerId, presence: true
	validates :vendorId, presence: true
	validates :purchasePrice, presence: true, numericality: true
	validates :quantityOnHand, presence: true, numericality: true
end
