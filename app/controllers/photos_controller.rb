class PhotosController < ApplicationController
  before_action :require_user, only: [:index, :show]
  def index
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
