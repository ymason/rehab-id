class HomeController < ApplicationController
	skip_after_action :verify_authorized, :only => :show

	def index
	end

	def show
	end
end
