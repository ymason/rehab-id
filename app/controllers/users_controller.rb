class UsersController < ApplicationController

	before_action :authenticate_user!, only: :show

	def show
		authorize current_user
	end

	def create
		if @resource.save
			WelcomeMailer.welcome_email(@resource).deliver_now
			redirect_to dashboard_path
		else
			renew 'new'
		end
	end
end
