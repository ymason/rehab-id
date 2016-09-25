class PriceFeaturePolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		admin_or_owner_of_price_feature?
	end

	def new?
		user.admin? || user.contractor?
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
		user.admin? || (user.contractor? && user.contractor_own_price_features?(record))
	end

end