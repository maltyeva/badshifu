class UserMailerPreview < ActionMailer::Preview
  def new_message
  	@message = Message.new
  	@message.name = "Maria"
  	@message.email = "test@test.com"
  	@message.content = "this is sample feedback"

    UserMailer.new_message(@message)
  end
end