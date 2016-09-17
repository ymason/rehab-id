class PriceFeature < ApplicationRecord
  belongs_to :user
  belongs_to :feature
  has_many :estimates

end
