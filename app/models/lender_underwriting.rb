class LenderUnderwriting < ApplicationRecord
  belongs_to :user
  has_many :lender_quotes
end
