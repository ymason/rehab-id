class BidPolicy < ApplicationPolicy

	def index
		user.admin?
	end

	def show
		admin_or_owner_of_bid_project?
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

	def create_rooms?
		show?
	end

	def rooms?
		show?
	end

	def edit?
		show?
	end

	def destroy?
		show?
	end

	private

	def admin_or_owner_of_bid_project?
		user.admin? || (user.user? && user.owner_of_bid_project?(record))
	end

end