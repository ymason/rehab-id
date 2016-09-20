class ProjectsController < ApplicationController

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

		authorize @user
	end
	
end
