class PostsController < ApplicationController
  def index
    @posts = Post.where(published: true).page params[:page]
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def search
    @posts = Post.where("title like ? or content like ?", "%#{params[:q]}%", "%#{params[:q]}%").page params[:page]
  end
end