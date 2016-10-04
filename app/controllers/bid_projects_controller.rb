class BidProjectsController < ApplicationController

	skip_after_action :verify_authorized, :only => :index

	def index 
		@conversations = current_user.mailbox.conversations
	end

	def inbox 
		@conversations = current_user.mailbox.inbox
		render action: :index

		authorize current_user
	end 

	def sent 
		@conversations = current_user.mailbox.sentbox
		render action: :index

		authorize current_user
	end 

	def trash 
		@conversations = current_user.mailbox.trash
		render action: :index

		authorize current_user
	end 

	def show
		@conversation = current_user.mailbox.conversations.find(params[:id])
		@conversation.mark_as_read(current_user)

		authorize current_user
	end

	def new 
		@recipients = User.all - [@current_user]

		authorize current_user
	end

	def create 
		@recipients = User.find(params[:user_id])
		receipt = current_user.send_message(@recipients, params[:body], params[:subject], true, params[:attachment])
		redirect_to all_bid_projects_path

		authorize current_user
	end

	def update

		@bid_project = BidProject.find_by(id: params[:id])

		@bid = @bid_project.project

		@project = @bid.project

		@bid_project.update(
			accepted: 1
			)

		@contractor_bid = @bid_project.contractor_bid

		@contractor_bid.update(
			accepted: 1
			)

		redirect_to dashboard_path

		authorize @bid_project 
	end
end
