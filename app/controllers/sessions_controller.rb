class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email])
      if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to dashboard_path
      else
        flash[:notice] = "Login failed"
        render 'home'
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
