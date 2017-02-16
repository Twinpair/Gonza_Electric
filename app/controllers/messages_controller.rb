class MessagesController < ApplicationController
  def index
    @messages = Message.all.paginate(page: params[:page], per_page: 9)
  end

  def create
    @message = Message.new(message_params)
    if @message.save && @message.language == "english"
      flash[:success] = "Thank you for contacting us. We will be in touch soon!"
      redirect_to "/#form"  
    elsif @message.save && @message.language == "espanol"
      flash[:success] = "Gracias por contactar con nosotros. Estaremos en contacto pronto!"
      redirect_to "/espanol#form"
    else
      render :new
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    redirect_to messages_url
  end

private

  def message_params
    params.require(:message).permit(:name, :phone, :email, :message, :captcha, :language)
  end
end
