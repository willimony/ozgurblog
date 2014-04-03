class AdminUsersController < ApplicationController
  def show
    @author = AdminUser.find(params[:id])
    @posts = @author.posts.published.page params[:page]
  end
end