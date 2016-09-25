class LenderUndewritingPolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		admin_or_owner_of_lender_underwriting?
	end

	def new?
		user.admin? || user.lender?
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

	def admin_or_owner_of_lender_underwriting?
		user.admin? || (user.lender? && user.lender_own_underwriting?(record))
	end

end