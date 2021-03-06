class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private 
	def current_user
		if session[:role] == "clinic"
			@current_user ||= Clinic.find(session[:user_id]) if session[:user_id]
		elsif session[:role] == "vendor"
			@current_user ||= Vendor.find(session[:user_id]) if session[:user_id]
		else
			@current_user ||= User.find(session[:user_id]) if session[:user_id]
		end
	end

	def product_compare_cart
		@product_compare_cart ||= session[:compare_cart_products] if session[:compare_cart_products]
	end

	def wish_list
		@wish_list ||= session[:wish_list_products] if session[:wish_list_products]
	end

	helper_method :current_user, :product_compare_cart, :wish_list
end
