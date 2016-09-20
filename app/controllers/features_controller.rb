class FeaturesController < ApplicationController
	
	protect_from_forgery with: :null_session

	def create
		feature = Feature.create(feature_params)
		render json: feature
	end

	def index
		features = Features.all
		render json: features
	end

	def show
		feature = Feature.find_by(id: params[:id])
		unless feature
			render json: {error: "Feature not found"},
				status: 404
			return
		end
		render json: feature.to_json({:include => :ingredients })
	end

	def destroy
		feature = Feature.find_by(id: params[:id])
			unless feature
			render json: {error: "Feature not found to delete"},
				status: 404
			return
		end
		feature.delete
		render json: feature
	end

	def update
		feature = Feature.find_by(id: params[:id])
			unless feature
			render json: {error: "Feature not found to update"},
				status: 404
			return
		end
		feature.update(feature_params)
		render json: feature
	end

	private

	def feature_params
		params.require(:feature).permit(:name, :feature_type)
	end
end
