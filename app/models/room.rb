class Room < ApplicationRecord
  belongs_to :project
  has_many :project_features
  has_one :estimate

  enum room_type: [:room, :bathroom]

  accepts_nested_attributes_for :project_features
end
