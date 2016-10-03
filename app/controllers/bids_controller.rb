class BidsController < ApplicationController

	include ActionView::Helpers::NumberHelper

	def new
		@bid = Bid.new

		authorize current_user
	end

	def create

		contractor_bids = []

		project_bids = []

		@contractors_id = params[:contractors]

		@contractors_id.each do | contractor |

			@cbid = ContractorBid.create(user_id: contractor)

			contractor_bids.push(@cbid)
		end

		@project = params[:project_id]

		@user = params[:user_id]

		@bid = Bid.new(
			project_id: @project,
			user_id: @user
			)

		@bid.save

		if @bid.save
			contractor_bids.each do | bid |
				@bid_project = BidProject.create(
					contractor_bid_id: bid.id,
					bid_id: @bid.id
					)
				project_bids.push(@bid_project)
			end

			@bid_project = @bid.project

			authorize current_user

			redirect_to edit_user_project_bid_path(current_user.id, @project, @bid.id)
		else
			redirect_to user_project_path(@user, @project), :flash => { :error => "No contractors available!" }
		end
	end

	def show
		@bid = Bid.find_by(id: params[:id])

		@bid_project = @bid.project

		@bid_projects = @bid.bid_projects

		@project_estimate = @bid_project.min_and_max

		@minimum = @project_estimate[0]

		@maximum = @project_estimate[1]

		@minimum_number = number_to_currency(@minimum, :precision => 0)

		@maximum_number = number_to_currency(@maximum, :precision => 0)

		authorize @bid_project
	end

	def edit
		@bid = Bid.find_by(id: params[:id])

		@bid_project = @bid.project

		authorize @bid_project
	end

	def update
		@bid = Bid.find_by(id: params[:id])

		@bid.update(
			date1: params[:bid][:date1],
			start_time1: params[:bid][:start_time1],
			date2: params[:bid][:date2],
			start_time2: params[:bid][:start_time2],
			date3: params[:bid][:date3],
			start_time3: params[:bid][:start_time3],
			contact_name: params[:bid][:contact_name],
			contact_phone: params[:bid][:contact_phone],
			contact_email: params[:bid][:contact_email],
			instructions: params[:bid][:instructions]
			)


		authorize @bid
		redirect_to user_project_bid_path(current_user.id, @bid.project_id, @bid.id)
	end


end
