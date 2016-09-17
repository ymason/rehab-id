class PriceFeaturesController < ApplicationController
	skip_after_action :verify_authorized, :only => :create

	def new
		@user_price_features = PriceFeature.new

		authorize @user_price_features

	end

	def create
		# @attributes = params.permit(:feature => [:floor, :ceiling, :feature_type])
		# attributes.each { | a | PriceFeature.create(a)}

		params[:feature].each do |f|
			feature_hash = {}
			feature_hash[:feature_id] = f[:feature_id]
			feature_hash[:floor] = f[:floor]
			feature_hash[:ceiling] = f[:ceiling]
			p = PriceFeature.new(feature_hash)
			p.user = current_user
		# byebug

		p.save
	end
		# @user_price_feature = PriceFeature.new(feature_attributes)

		# hash = { }
		# hash[:feature_id] = params[:feature][:feature_type]
		# hash[:floor] = params[:feature][:floor]
		# hash[:ceiling] = params[:feature][:ceiling]


		# @user_price_feature = PriceFeature.new(hash)

		# @user_price_features = PriceFeature.create([
		# 	{ params[:feature][0][:feature_type] }, 
		#  { params[:feature][1][:feature_type] },
		#  { params[:feature][2][:feature_type] },
		#  { params[:feature][3][:feature_type] }
		#  ])

		# @user_price_features = PriceFeature.new(
			# user_id: params[:user_id],
			# feature_id: params[:price_feature][:feature],
			# floor: params[:price_feature][:floor],
			# ceiling: params[:price_feature][:ceiling],
			# )

		# authorize @user_price_features

		# if @user_price_features(feature_attributes)
			redirect_to dashboard_path
		# else
			# render 'new'
		# end
	end

	def index
		# @user_price_feature = self.price_features

		# find all contractor prices 
	end
end

# PriceFeature.where(:feature_id => current_user.project_features).blank?
# 	Trucks.where(:id => current_truck.id).blank?
# .where(:user_id => current_user.id)
# 	if Business.exists?(user_id: current_user.id)