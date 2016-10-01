class ContractorBid < ApplicationRecord
  belongs_to :user
  has_many :bid_project
end
