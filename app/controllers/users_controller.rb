class UsersController < ApplicationController

	def show
		@all_user_projects = current_user.projects

		@all_user_loans = current_user.loan_quotes

		@user_lender_loans = current_user.lender_loans

		@user_project_bids = current_user.bids

		@user_contract_bids = current_user.contractor_bids

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
