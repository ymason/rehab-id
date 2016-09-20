class HomePolicy < ApplicationPolicy
	def index
		user.admin? || user.contractor? || user.user? || user.lender?
	end

	def show
		index?
	end

	def new?
		index?
	end

	def create?
		index?
	end

	def update?
		index?
	end

	def edit?
		index?
	end

	def destroy?
		index?
	end

end