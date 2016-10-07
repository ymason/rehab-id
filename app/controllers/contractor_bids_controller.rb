class ContractorBidsController < ApplicationController
	include ActionView::Helpers::NumberHelper
	skip_after_action :verify_authorized, :only => :appointment
	before_action :set_contractor_bid_project, only: [:appointment, :show, :edit, :update, :destroy]

	def appointment
		@user = User.find_by(id: params[:user_id])

    	@start_times = @bid.start_times

    	@time_zone = @project.time_zone
	end

	def edit
		authorize @contractor_bid
	end

	def update
		@contractor_bid.update(contractor_bid_params)

		@bid_project.update(
			breakdown: @contractor_bid.breakdown,
			days: @contractor_bid.days,
			draws: @contractor_bid.draws,
			total: @contractor_bid.total
			)

		redirect_to user_contractor_bid_path(current_user.id, @contractor_bid.id)
		authorize @contractor_bid
	end

	def show
    	authorize @contractor_bid
	end

	private

	 def set_contractor_bid_project
      @contractor_bid = ContractorBid.find(params[:id])
      @bid_project = @contractor_bid.bid_project
      @bid = @bid_project.bid
      @project = @bid.project
    end

    def contractor_bid_params
      params.require(:contractor_bid).permit(
      	:breakdown, :days, :draws, :total)
    end

end
