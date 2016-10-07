class LenderLoanPolicy < ApplicationPolicy
	def index
		admin_or_owner_of_lender_loan?
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

	def admin_or_owner_of_lender_loan?
		user.admin? || (user.lender? && user.lender_own_loan?(record))
	end

end