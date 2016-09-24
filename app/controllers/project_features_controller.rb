class ProjectFeaturesController < ApplicationController
	skip_after_action :verify_authorized, :only => :create
	
	def new
		@user_project_features = ProjectFeature.new

		@user = current_user
		@project_id = params[:project_id]
		@project = Project.where(id: @project_id)
		authorize @user_project_features

	end

	def create
		@project_id = params[:project_id]
		@project = Project.where(id: @project_id)
		
		params[:feature].each do |f|
			feature_hash = {}
			feature_hash[:feature_id] = f[:feature_id]

				p = ProjectFeature.new(feature_hash)
				p.project_id = @project_id
				
			if p.project.project_features.exists?(feature_id: f[:feature_id])
				flash[:error] = "This feature was already added."
			else
				p.save
			end
		end
	redirect_to user_project_path(current_user.id, @project_id)
	end

end
