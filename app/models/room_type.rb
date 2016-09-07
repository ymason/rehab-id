class RoomType < ApplicationRecord
	has_many :room_features
	has_many :rooms
end
