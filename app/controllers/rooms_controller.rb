class RoomsController < ApplicationController

	skip_after_action :verify_authorized, :only => :new
	
	def new
		@project_room = Room.new

		@user = current_user
		@project_id = params[:project_id]
		@project = Project.find_by(id: params[:project_id])

		@project_rooms = @project.project_rooms
		@project_bathrooms = @project.bathrooms

	end

	def create
		
		params[:feature].each do |f|
			feature_hash = {}
			feature_hash[:feature_id] = f[:feature_id]
			p = ProjectFeature.new(feature_hash)
			p.project_id = params[:project_id]

		p.save
		end
	end
end
