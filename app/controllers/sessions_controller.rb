class SessionsController < ApplicationController
  def new
  end
  
  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to root_url, notice: "Logged in!"
	else
		flash.now.alert = "Email or password is invalid"
		render "new" 
		#respond_to do |format|
		#flash.now[:alert] = 'Email or password is invalid'
		#format.html { render :action => 'new' }
		#	format.json { render json: user.errors, status: :Invalid }
		#end
        
	end
  end
end
