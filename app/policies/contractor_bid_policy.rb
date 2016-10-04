class ContractorBidPolicy < ApplicationPolicy

	def index
		user.admin?
	end

	def show
		admin_or_owner_of_contractor_bid?
	end

	def new?
		user.admin? || user.user?
	end

	def appointment
		show?
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

	def admin_or_owner_of_contractor_bid?
		user.admin? || (user.user? && user.owner_of_contractor_bid?(record))
	end

end