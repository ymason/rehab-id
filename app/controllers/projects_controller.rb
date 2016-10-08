class ProjectsController < ApplicationController
	include ActionView::Helpers::NumberHelper
	before_action :set_project, only: [:show, :rooms, :edit, :update, :destroy]

	def new
		@project = Project.new

		authorize current_user
	end

	def create

		@project = Project.new(project_params)
		@project.user_id = current_user.id

		authorize current_user

		if @project.save
			redirect_to project_rooms_path(current_user.id, @project.id) 
		else
			render 'new'
		end
	end

	def rooms
		authorize @project
	end

	def update
		@project.update(room_params)

		redirect_to new_project_project_feature_path(@project.id) 
		authorize @project
	end

	def index

		@user = current_user

		@all_user_projects = @user.projects

	end

	def show

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
	
	private

	def set_project
      @project = Project.find(params[:id])
    end

	def project_params
      params.require(:project).permit(:user_id, :address, :city, :state, :zip_code, :square_feet)
    end

    def room_params
    	params.require(:project).permit(:rooms, :bathrooms, :kitchen, :exterior, :plumbing, :electrical, :hvac, :roof, :floor)
    end
	
end
