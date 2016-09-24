class ProjectsController < ApplicationController
	include ActionView::Helpers::NumberHelper

	def new
		@project = Project.new

		authorize @project
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

		authorize @project

		if @project.save
			redirect_to new_project_project_feature_path(@project.id) 
		else
			render 'new'
		end
	end

	def index

		@user = User.find_by(id: params[:user_id])

		@all_user_projects = @user.projects

		authorize current_user
	end

	def show
		@project = Project.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		@contractors = User.local_contractors(@project)

		@project_sqft = number_with_delimiter(@project.square_feet)

		# @estimates = @project.create_estimates

		@project_estimate = @project.min_and_max

		@minimum = @project_estimate[0]

		@maximum = @project_estimate[1]

		@minimum_number = number_to_currency(@minimum, :precision => 0)

		@maximum_number = number_to_currency(@maximum, :precision => 0)

		authorize @user
	end
	
end
