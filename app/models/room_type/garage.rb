module RoomType
	class Bedroom
		def features
			[
				GarageDoor.new,
				Wall.new,
				Ceiling.new,
				Closet.new,
				Fixtures.new,
				Window.new,
				Door.new
			]
		end
	end
end