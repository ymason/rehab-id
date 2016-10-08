class ProjectFeaturesController < ApplicationController
	before_action :set_project, only: [:new, :create, :edit, :update, :destroy]

	def new
		@user_project_features = ProjectFeature.new

		@rooms = @project.rooms

		@bathrooms = @project.bathrooms

		authorize current_user
	end

	def create
		params[:project_feature].each do |f|
			feature_hash = {}
			feature_hash[:feature_id] = f[:feature_id]

		p = ProjectFeature.new(feature_hash)
		p.project_id = @project_id	
		p.save
		end

	redirect_to user_project_path(current_user.id, @project_id)

	authorize current_user
	end

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
