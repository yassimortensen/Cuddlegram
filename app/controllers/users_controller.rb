class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Cuddlegram"
      redirect_to '/'
    else
      flash[:notice] = "Not a valid user!"
      redirect_to '/signup'
    end
  end

private
  def users_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
