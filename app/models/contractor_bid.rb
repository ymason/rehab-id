class ContractorBid < ApplicationRecord
  belongs_to :user
  has_one :bid_project
  has_one :appointment
end
