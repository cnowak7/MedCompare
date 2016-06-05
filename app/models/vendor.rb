class Vendor < ActiveRecord::Base
	has_many :products
	has_secure_password
	
	validates :email, :presence=>true, :uniqueness=>true
	validates :name, :presence=>true
	validates :phone_number, :numericality=>true, :presence=>true
end
