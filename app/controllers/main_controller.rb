class MainController < ApplicationController
  def about
  end

  def contact
  end
  
  def author
    @author = AdminUser.find(params[:id])
    @posts = @author.posts.page params[:page]
  end
end
