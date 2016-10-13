class ProjectFeaturesController < ApplicationController
	before_action :set_project, only: [:new, :create, :rooms, :create_rooms, :edit, :update, :destroy]
	skip_after_action :verify_authorized, :only => [:rooms, :create_rooms]

	def new
		@user_project_features = ProjectFeature.new

		authorize current_user
	end

	def rooms
		@user_project_features = ProjectFeature.new

		@rooms = @project.rooms

		@bathrooms = @project.bathrooms
	end

	def create_rooms
		new_features = []

		params[:feature].each do |f|
			feature_hash = {}

			if f[:feature_id].nil?

			else
				feature_hash[:feature_id] = f[:feature_id]

			p = ProjectFeature.new(feature_hash)
			p.project_id = @project_id	
			p.save

			new_features.push(p)
			end
		end

		@project.create_estimates(new_features)

		redirect_to user_project_path(current_user.id, @project_id)
	end

	# def create
	# 	new_features = []

	# 	params[:feature].each do |f|
	# 		feature_hash = {}

	# 		if f[:feature_id].nil?

	# 		else
	# 			feature_hash[:feature_id] = f[:feature_id]

	# 		p = ProjectFeature.new(feature_hash)
	# 		p.project_id = @project_id	
	# 		p.save

	# 		new_features.push(p)
	# 		end
	# 	end

	# @project.create_estimates(new_features)

	# redirect_to user_project_path(current_user.id, @project_id)

	# authorize current_user
	# end

	# Add Edit/Update Method
	# p.project.project_features.exists?(feature_id: f[:feature_id])
	# 			flash[:error] = "This feature was already added."

	private

	def set_project
	@user = current_user
    @project_id = params[:project_id]
	@project = Project.find(@project_id)
    end
end
