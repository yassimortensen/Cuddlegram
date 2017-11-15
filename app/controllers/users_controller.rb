class UsersController < ApplicationController
  #before_action :require_action, only: [:index]

  def index

  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Cuddlegram"
      redirect_to '/users'
    else
      flash[:notice] = "Error: Sign up failed"
      render :new
    end
  end


private
  def users_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :instagram_handle)
  end


end
