class UserPolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		user.admin? || user_is_self?
	end

	def new?
		show?
	end

	def create?
		show?
	end

	def update?
		show?
	end

	def edit?
		show?
	end

	def destroy?
		show?
	end

end