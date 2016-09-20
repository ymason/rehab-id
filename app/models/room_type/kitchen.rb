module RoomType
	class Kitchen
		def features
			[
				Floor.new,
				Wall.new,
				Ceiling.new,
				Closet.new,
				Fixtures.new,
				Window.new,
				Door.new,
				Countertop.new,
				Cabinent.new,
				Appliance.new
			]
		end
	end
end