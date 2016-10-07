class BidProjectPolicy < ApplicationPolicy

	def index
		user.admin?
	end

	def show
		admin_or_owner_of_bid_project_or_owner_of_contractor_bid?
	end

	def new?
		index?
	end

	def create?
		index?
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

	def inbox
		index?
	end

	def sent
		index?
	end

	def trash
		index?
	end

	def show
		index?
	end


	private

	def admin_or_owner_of_bid_project_or_owner_of_contractor_bid?
		user.admin? || (user.user? && user.owner_of_bid_approval?(record)) || (user.contractor? && user.owner_of_contractor_bid?(record))
	end

end