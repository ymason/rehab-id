class EstimateController < ApplicationController

	def new
		@estimate = Estimate.new

		authorize @estimate

	end

	def create

		@estimate = Estimate.new(
			project_feature_id: params[:project_feature_id]
			)

		authorize @estimate

		if @estimate.save
			redirect_to dashboard_path
		else
			render 'new'
		end
	end

	def show
		@estimate = Estimate.find_by(id: params[:id])

		@project_feature_id = ProjectFeature.find_by(id: params[:project_feature_id])

		@price_feature_id = PriceFeature.find_by(id: params[:price_featured_id])

		authorize @estimate
	end
end
