class LoanApplicationPolicy < ApplicationPolicy
	def index
		user.admin?
	end

	def show
		admin_or_owner_of_loan_app?
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

	def admin_or_owner_of_loan_app?
		user.admin? || (user.user? && user.owner_of_loan_app?(record))
	end

end