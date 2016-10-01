class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :bid_projects
end
