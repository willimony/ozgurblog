class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(page_params)
    
    if @message.save
      redirect_to root_path, notice: 'Mesajınız başarılı bir şekilde iletildi!'
    else
      render 'new'
    end
  end
  
  private
    def page_params
      params.require(:message).permit(:title, :content, :email)
    end
end
