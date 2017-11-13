class UsersController < ApplicationController

  def create_table
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "you're logged in"
      redirect_to dashboard_path
    else
      flash[:notice] = "Not a valid user!"
      redirect_to root_path
    end
  end

private
  def users_params
    params.require(:user).permit(:email, :password)
  end

end
