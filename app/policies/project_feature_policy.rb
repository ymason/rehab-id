class ProjectFeaturePolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		user.admin? || user.user?
	end

	def new?
		user.admin? || user.user?
	end

	def create?
		new?
	end

	def update?
		admin_or_owner_of_project_feature?
	end

	def edit?
		update?
	end

	def destroy?
		update?
	end

	private

	def admin_or_owner_of_price_feature?
		user.admin? || (user.user? && user.project_features_owner?(record))
	end

end