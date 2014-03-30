class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_url, notice: 'Hoş geldiniz..')
    else
      flash.now.alert = 'Email ya da parola hatalı'
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Güle güle..'
  end
end
