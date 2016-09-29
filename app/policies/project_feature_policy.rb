class ProjectFeaturePolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		admin_or_owner_of_project_feature?
	end

	def new?
		user.admin? || user.user?
	end

	def create?
		new?
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

	private

	def admin_or_owner_of_price_feature?
		user.admin? || (user.user? && user.project_features_owner?(record))
	end

end