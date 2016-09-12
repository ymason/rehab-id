class UsersController < ApplicationController

	before_action :authenticate_user!, only: :show

	def show
		authorize current_user
	end

	def create
		user = @resource

		if user.save
			redirect_to dashboard_path
		else
			renew 'new'
		end
	end
end
