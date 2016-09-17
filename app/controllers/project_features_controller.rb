class ProjectFeaturesController < ApplicationController

	def new
		@user_project_features = ProjectFeature.new

		@user = current_user
		@project_id = params[:project_id]
		@project = Project.where(id: @project_id)
		authorize @user_project_features

	end

	def create

		@user_project_features = ProjectFeature.new(
			project_id: params[:project_id],
			feature_id: params[:project_feature][:feature]
			)

		authorize @user_project_features

		if @user_project_features.save
			redirect_to user_project_path(current_user.id, id: params[:project_id])
		else
			render 'new'
		end
	end

end
