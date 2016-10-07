class PriceFeaturesController < ApplicationController
	skip_after_action :verify_authorized, :only => :create

	def new
		@user_price_features = PriceFeature.new

		authorize current_user

	end

	def create
		params[:feature].each do |f|
			feature_hash = {}
			feature_hash[:feature_id] = f[:feature_id]
			feature_hash[:floor] = f[:floor]
			feature_hash[:ceiling] = f[:ceiling]
			p = PriceFeature.new(feature_hash)
			p.user = current_user

		p.save

		end
		authorize current_user
		
		redirect_to dashboard_path

	end

	# If Contractor changes prices then send email to all users who had a estimate based on that contractor w/ ActiveJob
	def index

		@user = current_user
		@user_price_features = @user.price_features

	end
end