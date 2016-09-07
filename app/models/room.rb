class Room < ApplicationRecord
  belongs_to :project
  belongs_to :room_type
end
