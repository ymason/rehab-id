class RoomFeature < ApplicationRecord
  belongs_to :type
  belongs_to :room_type
end
