class LenderLoan < ApplicationRecord
  belongs_to :user
  has_one :loan_application
end
