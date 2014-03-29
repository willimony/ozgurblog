class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def search
    @posts = Post.where("title like ? or content like ?", "%#{params[:q]}%", "%#{params[:q]}%")
  end
end
