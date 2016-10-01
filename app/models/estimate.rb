class Estimate < ApplicationRecord
  belongs_to :project
  belongs_to :price_feature
  belongs_to :feature
  belongs_to :project_feature

end