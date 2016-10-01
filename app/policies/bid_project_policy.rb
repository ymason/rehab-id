class BidProjectPolicy < ApplicationPolicy

	def index
		user.admin? || user.user? || user.contractor?
	end

	def show
		admin_or_owner_of_bid_project?
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

	def admin_or_owner_of_bid_project?
		user.admin? || (user.user? && user.owner_of_bid_approval?(record))
	end

end