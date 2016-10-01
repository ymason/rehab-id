class ProjectsController < ApplicationController
	include ActionView::Helpers::NumberHelper

	skip_after_action :verify_authorized, :only => :index

	def new
		@project = Project.new

		authorize current_user
	end

	def create

		@project = Project.new(
			user_id: params[:user_id],
			address: params[:project][:address],
			city: params[:project][:city],
			state: params[:project][:state],
			zip_code: params[:project][:zip_code],
			square_feet: params[:project][:square_feet],
			rooms: params[:project][:rooms],
			bathrooms: params[:project][:bathrooms]
			)

		authorize current_user

		if @project.save
			redirect_to new_project_project_feature_path(@project.id) 
		else
			render 'new'
		end
	end

	def index

		@user = current_user

		@all_user_projects = @user.projects

	end

	def show
		@project = Project.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		@contractors = User.local_contractors(@project)

		@contractor_ids = @contractors.pluck(:id)

		@project_sqft = number_with_delimiter(@project.square_feet)

		@project_estimate = @project.min_and_max

		@minimum = @project_estimate[0]

		@maximum = @project_estimate[1]

		@minimum_number = number_to_currency(@minimum, :precision => 0)

		@maximum_number = number_to_currency(@maximum, :precision => 0)

		authorize @project
	end
	
end
