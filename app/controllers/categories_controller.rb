class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.published.page params[:page]
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)

  	if @category.save
  		redirect_to :back, notice: 'başarı ile kategori oluşturuldu'
  	else
  		render :new
  	end
  end

  private
  	def post_params
      params.require(:category).permit(:name)
    end
end
