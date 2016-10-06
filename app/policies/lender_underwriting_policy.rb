class LenderUnderwritingPolicy < ApplicationPolicy
	def index
		admin_or_owner_of_lender_underwriting?
	end

	def show
		index?
	end

	def new?
		user.admin? || user.lender?
	end

	def create?
		new?
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

	private

	def admin_or_owner_of_lender_underwriting?
		user.admin? || (user.lender? && user.lender_own_underwriting?(record))
	end

end