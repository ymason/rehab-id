class ProjectFeaturesController < ApplicationController

	def new
		@project_feature = ProjectFeature.new

		authorize @project_feature

		@all_project_features = ProjectFeature.all

	end

	def create

		@project_feature = ProjectFeature.new(
			project_id: params[:project_id],
			room_type: params[:project_feature][:room_type],
			price: params[:project_feature][:price]
			)

		authorize @project_feature

		if @project_feature.save
			render 'new' 
		else
			render 'new'
		end
	end

	def index
		@all_user_project_features = self.project.project_features.all

		# find all user prices 
	end

end
