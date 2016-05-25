class SessionsController < ApplicationController
  def new
  end
  
  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id

		# Initialize new arrays for product and quantity. 
	    session[:compare_cart_products] = Array.new

		redirect_to catalog_path, notice: "Logged in!"
	else
		flash.now.alert = "Email or password is invalid"
		render "new" 
	end
  end
  def destroy
  	session[:user_id] = nil

	# Initialize new arrays for product and quantity. 
    session[:compare_cart_products] = Array.new

  	redirect_to root_url, notice: "Logged out!"
  end
end
