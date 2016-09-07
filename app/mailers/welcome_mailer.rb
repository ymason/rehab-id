class WelcomeMailer < ApplicationMailer

	default from: 'team@rehabid.com'
	
	def welcome_email(user)
	  	@user = user
	  	mail(to: @user.email, subject: "Welcome To RehabID Beta - #{@user.name}")
  	end
end
