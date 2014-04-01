class PostsController < ApplicationController
  def index
    @posts = Post.published.page params[:page]
  end

  def show
    @post = Post.find_by_slug_and_published(params[:id], true)
  end
  
  def search
    @posts = Post.published.where("title like ? or content like ?", "%#{params[:q]}%", "%#{params[:q]}%").page params[:page]
  end
end