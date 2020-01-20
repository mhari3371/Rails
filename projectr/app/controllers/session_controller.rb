class SessionController < ApplicationController
	
	def create
		user = User.find_by(email: login_params[:email])
        if (user && user.email == login_params[:email] && user.encrypted_password == login_params[:encrypted_password]) 
           session[:user_id] = user.id
           flash[:notice] = "Your login was successfull"
      		flash[:color]= "valid"
           redirect_to :controller => 'tweets', :action => 'index' 
        else
           redirect_to users_login_path, alert: "Invalid email or password"
        end	
	end

  def destroy

  end

  def signout

   session.clear
   redirect_to users_login_path, alert: "sucessfully loged out!!"
  end


	
   def login_params
      params.require(:user).permit(:email, :encrypted_password)
   end  
end 

