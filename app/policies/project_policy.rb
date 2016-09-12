class ProjectPolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		index?
	end

	def new?
		user.admin? || owner_of_project?
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