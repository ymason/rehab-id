class BidProjectsController < ApplicationController
	before_action :set_bid_project, only: [:show, :edit, :update, :destroy]

	def create 
		@recipients = User.find(params[:user_id])
		receipt = current_user.send_message(@recipients, params[:body], params[:subject], true, params[:attachment])
		redirect_to all_bid_projects_path

		authorize current_user
	end

	def update
		@bid_project.update(
			accepted: 1
			)

		@contractor_bid = @bid_project.contractor_bid

		@contractor_bid.update(
			accepted: 1
			)

		user_id = params[:user_id]
		project_id = params[:project_id]
		bid_id = params[:bid_id]

		redirect_to user_project_bid_path(user_id, project_id, bid_id)
		authorize @bid_project 
	end

	private

	 def set_bid_project
      @bid_project = BidProject.find(params[:id])
      @bid = @bid_project.bid
      @project = @bid.project
    end
end
