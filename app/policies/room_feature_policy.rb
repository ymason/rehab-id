class RoomFeaturePolicy < ApplicationPolicy
	def index
		user.admin? || user.contractor? || user.user?
	end

	def show
		index?
	end

	def new?
		user.admin?
	end

	def create?
		new?
	end

	def update?
		new?
	end

	def edit?
		new?
	end

	def destroy?
		new?
	end

end