class AdminUsersController < ApplicationController
  def show
    @author = AdminUser.find(params[:id])
    @posts = @author.posts.page params[:page]
  end
end