class SessionsController < ApplicationController
  def new
  end
  
  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		session[:role] = "admin"
		# Initialize new arrays for product and quantity. 
	    session[:compare_cart_products] = Array.new
	    session[:wish_list_products] = Array.new

		redirect_to catalog_path, notice: "Logged in as Administrator"
	else
		flash.now.alert = "Email or password is invalid"
		render "new" 
	end
  end
  def destroy
  	session[:user_id] = nil
  	session[:role] = nil
	# Initialize new arrays for product and quantity. 
    session[:compare_cart_products] = Array.new
    session[:wish_list_products] = Array.new

  	redirect_to root_url, notice: "Logged out!"
  end
end
