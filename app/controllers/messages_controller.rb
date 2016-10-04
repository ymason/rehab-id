class MessagesController < ApplicationController
	skip_after_action :verify_authorized, :only => :create

	def create

		@recipient = User.find_by(id: params[:recipient])
		@project_user_id = params[:project_user]
		@project_user = User.find_by(id: params[:project_user])
		@project_id = params[:project_id]
		@bid_id = params[:bid_id]
		@bid_project_id = params[:bid_project_id]

		@conversation = params[:conversation]
  		conv_check_1 = @project_user.mailbox.conversations.participant(@recipient)
  		conv_check_2 = @project_user.mailbox.conversations.participant(current_user)

  		@dialog = (conv_check_1 & conv_check_2).first

		if @dialog.nil? or !@dialog.is_participant?(current_user)
		   current_user.send_message(@recipient, params[:body],params[:subject], true, params[:attachment])
		   redirect_to bid_message_show_path(@project_user_id, @project_id, @bid_id, @bid_project_id)
		else
		  current_user.reply_to_conversation(@dialog, params[:body])
		  redirect_to bid_message_show_path(@project_user_id, @project_id, @bid_id, @bid_project_id)
		end
	end

		# @conversation = current_user.mailbox.conversations.find(params[:bid_project_id])
		# receipt = current_user.reply_to_conversation(@conversation, params[:body])
		# @bid_project_id = params[:bid_project_id]
		# @user_id = params[:user_id]
		# @project_id = params[:project_id]
		# @bid_id = params[:bid_id]
		# @contractor = User.find_by(id: params[:contractor_id])

		# redirect_to bid_message_show_path(@user_id, @project_id, @bid_id, @bid_project_id)

end
