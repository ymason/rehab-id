class HomeController < ApplicationController
	skip_after_action :verify_authorized
	
	def index
	end

	def contact
	end
end
