class ProjectPolicy < ApplicationPolicy

	# attr_reader :user, :project

	# def intialize(user, project)
	# 	@user = user
	# 	@project = project
	# end

	def index
		user.admin? || user.contractor? || user.user? || user.lender?
	end

	def show
		index?
	end

	def new?
		user.admin? || user.user?
	end

	def create?
		new?
	end

	def update?
		user.admin? || user.owner_of_project?(record)
	end

	def edit?
		update?
	end

	def destroy?
		update?
	end

end