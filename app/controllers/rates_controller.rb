class RatesController < ApplicationController

	def new
		@rate = Rate.new
		authorize @rate
		@all_room_features = RoomFeature.all

	end

	def create

		@rate = Rate.new(
			user_id: params[:user_id],
			room_feature_id: params[:rate][:room_feature],
			price: params[:rate][:price]
			)

		authorize @rate

		if @rate.save
			render 'new' 
		else
			render 'new'
		end
	end

	def index
		@all_rates = self.rate.all

		# find alluser rates 
	end

end
