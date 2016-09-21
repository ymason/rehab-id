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
			project_rooms: params[:project][:project_rooms],
			bathrooms: params[:project][:bathrooms]
			)

		authorize @project

		if @project.save
			redirect_to new_project_room_path(@project.id)
		else
			render 'new'
		end
	end

	# def rooms
	# 	@project = Project.find_by(id: params[:project_id])

	# 	authorize @project
	# end

	# def create_rooms
	# 	@project = Project.find_by(id: params[:project_id])

	# 	authorize @project

	# 	if @project.update!(rooms_params)
	# 		redirect_to dashboard_path
	# 	else
	# 		render 'rooms'
	# 	end
	# end

	def index

		@user = User.find_by(id: params[:user_id])

		@all_user_projects = @user.projects

		authorize current_user
	end

	def show
		@project = Project.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		@contractors = User.local_contractors(@project)

		@rooms = @project.rooms

		authorize @user
	end

	private

    def rooms_params
      params.require(:project).permit(:rooms, :bathrooms)
    end
	
end
