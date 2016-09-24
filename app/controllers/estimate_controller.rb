class EstimateController < ApplicationController
	# skip_after_action :verify_authorized, :only => :create

	# def new
	# 	@project_estimate = Estimate.new

	# 	@project_id = params[:project_id]
	# 	@project = Project.where(id: @project_id)

	# 	authorize @project_estimate

	# end

	# def create
	# 	@project_id = params[:project_id]

	# 	@project_estimate = Estimate.new(
	# 		project_feature_id: params[:estimate][:project_feature_id],
	# 		project_id: params[:project_id],
	# 		floor: params[:estimate][:floor],
	# 		ceiling: params[:estimate][:ceiling]
	# 		)

	# 	authorize @project_estimate

	# 	if @project_estimate.save
	# 		redirect_to user_project_path(@project_id)
	# 	else
	# 		render 'new'
	# 	end
	# end

	# def show
	# 	@project_estimate = Estimate.find_by(id: params[:id])

	# 	@project_feature_id = ProjectFeature.find_by(id: params[:project_feature_id])

	# 	@price_feature_id = PriceFeature.find_by(id: params[:price_featured_id])

	# 	authorize @project_estimate
	# end
end
