class UserMailer < ActionMailer::Base
  default  :from => "bsurya7@gmail.com"

	def registration_confirmation(user)
	@user = user
	attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")

		mail(:to => @user.email, :subject => "Registered")
	end
end
