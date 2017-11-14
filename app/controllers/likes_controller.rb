class LikesController < ApplicationController
  before_action :require_user, only: [:new]

  def new
    @photos = Photo.all
  end

  def create
    like = Like.new(likes_params)
    if like.save
      redirect_to user_path(likes_params[:user_id])
    else
      render :new
    end
  end

  private

  def likes_params
    params.require(:like).permit(:user_id, :pet_id)
  end
end
