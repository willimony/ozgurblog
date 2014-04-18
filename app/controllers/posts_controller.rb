class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search, :feeds]
  before_action :is_users_post?, only: [:edit, :update, :destroy]


  def index
    @posts = Post.published.page params[:page]
  end

  def show
  end
  
  def search
    @posts = Post.published.search(params[:q]).page params[:page]
  end
  
  def feeds
    @posts = Post.all(select: "title, content, created_at")
    
    respond_to do |format|
      format.rss { render layout: false }
    end
  end


  def new
    @post = Post.new(published: true)
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    
    if @post.save
      redirect_to :back, notice: 'yazı başarı ile gönderildi.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'yazı başarı ile güncellendi.'
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy

    redirect_to root_path, notice: 'yazı başarı ile silindi'
  end

    private
    def set_post
      @post = Post.find(params[:id])
      is_users_post? unless @post.published
    end

    def post_params
      params.require(:post).permit(:title, :content, :category_id, :published)
    end

    def is_users_post?
      unless current_user && current_user == @post.user
        redirect_to root_path, alert: 'bu işleme yetkin yok'
      end
    end
end