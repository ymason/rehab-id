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
			square_feet: params[:project][:square_feet]
			)

		authorize @project

		if @project.save
			redirect_to user_project_path(current_user.id, @project.id) 
		else
			render 'new'
		end
	end

	def index
		@all_projects = Project.all
		authorize @project
	end

	def show
		@project = Project.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		authorize @user
	end
	
end
