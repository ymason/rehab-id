class LenderQuote < ApplicationRecord
  belongs_to :loan_quote
  belongs_to :lender_underwriting
  has_one :lender_application
end
