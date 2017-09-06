class MessagesController < ApplicationController
  def new
  	@message = Message.new
  end

  def create 
  	@message = Message.new(message_params)
  	if @message.valid?
      UserMailer.new_message(@message).deliver
      redirect_to root_path, notice: "Thank you! Your messages has been sent."
    else
      flash[:alert] = "I'm sorry, the internet blew up and your message didn't sent. Contact me directly at maria@drunkdinnerparty.com."
      render :new
    end
  end


private 

def message_params 
	params.require(:message).permit(:name, :email, :content)
end

end
