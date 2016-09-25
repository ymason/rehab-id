class LoanQuote < ApplicationRecord
  belongs_to :user
  has_many :lender_quotes

  enum property_type: [:single_family, :condo, :multi_family, :commercial]
end
