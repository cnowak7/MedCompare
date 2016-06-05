class Vendor < ActiveRecord::Base
	has_secure_password
	has_many :products
	
	validates :email, :presence=>true, :uniqueness=>true
	validates :name, :presence=>true
	validates :phone_number, :presence=>true
end
