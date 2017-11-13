class LikesController < ApplicationController
  before_action :require_action, only: [:index, :show]

  def index
    @likes = Like.all
  end

  def show
    @like = Like.find(params[:id])
    @photos = @like.photos
  end
end
