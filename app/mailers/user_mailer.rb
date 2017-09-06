class UserMailer < ApplicationMailer

	def new_message(message)
		@message = message 
		mail subject: "Feedback from #{@message.email}"
	end
end
