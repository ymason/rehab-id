class RoomFeaturesController < ApplicationController

	def new
		@room_feature = RoomFeature.new
		authorize @room_feature
	end

	def create
		@room_feature = RoomFeature.new(
			name: params[:room_feature][:name],
			type_id: params[:room_feature][:type_id],
			room_type_id: params[:room_feature][:room_type_id]
			)

		authorize @room_feature

		if @room_feature.save
			redirect_to room_features_path 
		else
			render 'new'
		end
	end

	def index
		@all_room_features = RoomFeature.all

		# find room features 
		# room_name.room_type.room_features.where()
	end
	
end
