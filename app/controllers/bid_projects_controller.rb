class BidProjectsController < ApplicationController

	skip_after_action :verify_authorized, :only => :show

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

		@user_id = current_user
		@bid_project = BidProject.find_by(id: params[:id])
		@contractor_bid = @bid_project.contractor_bid
		@contractor_id = @contractor_bid.user_id
		@contractor = User.find_by(id: params[:contractor_id])
		@project = Project.find_by(id: params[:project_id])
		@project_user_id = @project.user_id
		@project_user = User.find_by(id: @project_user_id)
		@bid = Bid.find_by(id: params[:bid_id])
		
		# @conversation = @project_user.mailbox.conversations.new || @mailbox.conversations.find(params[:id])
		@conversation = @project_user.mailbox.conversations.find(params[:id])
		@conversation.mark_as_read(current_user)
		authorize current_user

		# @opponent = User.find_by_username(params[:user])
		# conv_check_1 = Conversation.participant(@opponent)
		# conv_check_2 = Conversation.participant(current_user)
		# @dialog = (conv_check_1 & conv_check_2).first
		# if @dialog.nil? or !@dialog.is_participant?(current_user)
		#    current_user.send_message(@opponent, params[:body], 'subject')
		# else
		#   current_user.reply_to_conversation(@dialog, params[:body])
		# end
		# existing_conversation = Conversation.participant(u1).where('conversations.id in (?)', Conversation.participant(u2).collect(&:id))
	end

	# def new
	#   	@recipient = User.find_by(params[:recipient])
 #  		conv_check_1 = Conversation.participant(@recipient)
 #  		conv_check_2 = Conversation.participant(current_user)

 #  		@dialog = (conv_check_1 & conv_check_2).first

	# 	if @dialog.nil? or !@dialog.is_participant?(current_user)
	# 	   current_user.send_message(@recipient, params[:body],params[:subject], true, params[:attachment])
	# 	else
	# 	  current_user.reply_to_conversation(@dialog, params[:body])
	# 	end

	# end

	# def new 

	# 	@bid_project = BidProject.find_by(id: params[:id])
	# 	@contractor_bid = @bid_project.contractor_bid
	# 	@contractor_id = @contractor_bid.user_id
	# 	@user = User.find_by(id: params[:user_id])
	# 	@project = Project.find_by(id: params[:project_id])
	# 	@project_user = @project.user_id
	# 	@bid = Bid.find_by(id: params[:bid_id])

	# 	authorize current_user
	# end

	# def create 
	# 	@user = User.find(params[:user_id])
	# 	@contractor = User.find(params[:contractor_id])
	# 	@bid_project = BidProject.find_by(id: params[:id])
	# 	@project = Project.find_by(id: params[:project_id])
	# 	@project_user = User.find(params[:contractor_id])
	# 	@bid = Bid.find_by(id: params[:bid_id])

	# 	if current_user.contractor?
	# 		receipt = current_user.send_message(@project_user, params[:body], params[:subject], true, params[:attachment])
	# 		redirect_to bid_message_show_path(@user.id, @project.id, @bid.id, @bid_project.id)
	# 	else
	# 		receipt = current_user.send_message(@contractor, params[:body], params[:subject], true, params[:attachment])
	# 		redirect_to bid_message_show_path(@user.id, @project.id, @bid.id, @bid_project.id)
	# 	end

	# 	authorize current_user
	# end

	def update

		@bid_project = BidProject.find_by(id: params[:id])

		@bid = @bid_project.bid

		# @project = @bid.project

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
