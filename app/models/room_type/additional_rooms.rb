module RoomType
	class AdditionalRooms
		def additional
			[
				LivingRoom.new,
				FamilyRoom.new,
				DiningRoom.new,
				LaundryRoom.new,
				SunRoom.new,
				RecRoom.new,
				OtherRoom.new
			]
		end
	end
end