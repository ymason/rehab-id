class ContractorBidsController < ApplicationController
	skip_after_action :verify_authorized, :only => :appointment

	def appointment
		@contractor_bid = ContractorBid.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

    	@bid = @contractor_bid.bid_project.bid

    	@project = @bid.project

    	@start_times = @bid.start_times

    	@time_zone = @project.time_zone
	end

	def edit
		@contractor_bid = ContractorBid.find_by(id: params[:id])
		@user = User.find_by(id: params[:user_id])
		authorize @contractor_bid
	end

	def update
		@contractor_bid = ContractorBid.find_by(id: params[:id])
		@user = User.find_by(id: params[:user_id])
		@contractor_bid.update(
			breakdown: params[:contractor_bid][:breakdown],
			days: params[:contractor_bid][:days],
			draws: params[:contractor_bid][:draws],
			total: params[:contractor_bid][:total]
			)

		authorize @contractor_bid

		redirect_to user_contractor_bid_path(@user.id, @contractor_bid.id)
	end

	def show

		@contractor_bid = ContractorBid.find_by(id: params[:id])

		@contractor_id = @contractor_bid.user_id

		@user = User.find_by(id: params[:user_id])

		@bid_project = @contractor_bid.bid_project

    	@bid = @bid_project.bid

    	@project = @bid.project

    	@project_user_id = @project.user_id

    	@project_user = @project.user

    	authorize @contractor_bid
	end
end
