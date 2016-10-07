class BidsController < ApplicationController
	include ActionView::Helpers::NumberHelper
	before_action :set_bid, only: [:appointment, :show, :edit, :update, :destroy]


	def new
		@bid = Bid.new

		authorize current_user
	end

	def create
		@project = Project.find(params[:project_id])

		if @project.bid.nil?
			contractor_bids = []

			project_bids = []

			@contractors_id = params[:contractors]

			@contractors_id.each do | contractor |

				@cbid = ContractorBid.create(user_id: contractor)

				contractor_bids.push(@cbid)
			end

			@bid = Bid.new(
				project_id: @project.id,
				user_id: current_user.id
				)

			if @bid.save
				contractor_bids.each do | bid |
					@bid_project = BidProject.create(
						contractor_bid_id: bid.id,
						bid_id: @bid.id
						)
					project_bids.push(@bid_project)
				end

				redirect_to edit_user_project_bid_path(current_user.id, @project, @bid.id)
			else
				redirect_to user_project_path(@user, @project), :flash => { :error => "No contractors available!" }
			end
		else
			redirect_to edit_user_project_bid_path(current_user.id, @project.id, @project.bid.id)
		end
		authorize current_user
	end

	def show
		@project_estimate = @project.min_and_max

		@minimum = @project_estimate[0]

		@maximum = @project_estimate[1]

		@minimum_number = number_to_currency(@minimum, :precision => 0)

		@maximum_number = number_to_currency(@maximum, :precision => 0)

		authorize @bid
	end

	def edit
  		authorize @bid
		# Need to throw error if all information is not updated for scheduling
		
		# @bid.save(context: :bid_setup) 
  	end

	def update
		@bid.update_attributes(bid_params)
		redirect_to user_project_bid_path(current_user.id, @bid.project_id, @bid.id)
		authorize @bid
	end

private

	 def set_bid
      @bid = Bid.find(params[:id])
      @project = Project.find(params[:project_id])
      @bid_projects = @bid.bid_projects
    end

    def bid_params
      params.require(:bid).permit(
      	:date1, :start_time1, :date2,
      	:start_time2, :date3, :start_time3, :contact_name,
      	:contact_phone, :contact_email, :instructions)
    end
end
