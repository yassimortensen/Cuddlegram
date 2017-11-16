class SessionsController < ApplicationController

  def new
    #reset_session
  end

 def create
   @user = User.find_by_email(params[:session][:email])
   if @user && @user.authenticate(params[:session][:password])
     session[:user_id] = @user.id
     redirect_to '/users'
   else
     flash[:notice] = "Error: Login failed!"
     render :new
   end
 end

 def destroy
   session[:user_id] = nil
   redirect_to '/'
 end

end
