class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :image, presence: true
	validates :description, presence: true
	validates :category_id, presence: true
	validates :vendor_id, presence: true
	validates :purchase_price, presence: true, numericality: true
	validates :quantity_on_hand, presence: true, numericality: true

	belongs_to :category
	belongs_to :vendor

	def price
		if self.sale_price.present?
			return self.sale_price
		else
			return self.purchase_price
		end
	end
end
