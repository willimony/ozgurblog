class PostsController < ApplicationController
  def index
    @posts = Post.published.page params[:page]
  end

  def show
    @post = Post.find_by_slug_and_published(params[:id], true)
  end
  
  def search
    @posts = Post.published.search(params[:q]).page params[:page]
  end
  
  def feed
    @posts = Post.all(select: "title, content, created_at, slug")
    
    respond_to do |format|
      format.rss { render layout: false }
    end
  end
end