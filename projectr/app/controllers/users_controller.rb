class UsersController < ApplicationController
  def new
  	@user = User.new 
  end

  def create
    @user = User.new(params.require(:user).permit(:username , :email , :encrypted_password))
    if @user.save
      
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to users_login_path
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      # format.html { redirect_to users_new_path , notice: "not successfully" }
      # format.json { head :no_content}
      render 'new'
    end
  end

  def show 

  end
end
