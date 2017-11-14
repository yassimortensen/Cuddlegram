class PhotosController < ApplicationController
  before_action :require_user, only: [:index, :show]
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
