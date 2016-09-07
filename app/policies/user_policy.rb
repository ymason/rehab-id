class UserPolicy < ApplicationPolicy
	def index
		user.admin? || user.contractor? || user.lender? || user.user?
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