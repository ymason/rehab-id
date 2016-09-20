class PriceFeaturePolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		user.admin? || user.contractor? || user.user?
	end

	def new?
		user.admin? || user.contractor?
	end

	def create?
		new?
	end

	def update?
		admin_or_owner_of_price_feature?
	end

	def edit?
		update?
	end

	def destroy?
		update?
	end

	private

	def admin_or_owner_of_price_feature?
		user.admin? || (user.contractor? && user.contractor_own_price_features?(record))
	end

end