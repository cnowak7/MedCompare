class User < ActiveRecord::Base
	has_secure_password
	
	#attr_accessible :email, :password, :password_confirmation
	
	#validates_uniqueness_of :email
	
	validates :email, :presence=>true, :uniqueness=>true
end
