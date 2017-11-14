class CommentsController < ApplicationController
before_action :require_user, only: [:new]
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comments_params)
    if @comment.save
      redirect_to photo_path(@comment.photo)
    else
      redirect_to 'index'
    end
  end

  private
    def comments_params
      params.require(:comment).permit(:content, :photo_id, :user_id)
    end

end
