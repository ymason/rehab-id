class BidProject < ApplicationRecord
  belongs_to :contractor_bid
  belongs_to :bid
end
