module RoomType
	class Bathroom
		def features
			[
				Floor.new,
				Tub.new,
				Wall.new,
				Shower.new,
				Ceiling.new,
				Fixtures.new,
				Window.new,
				Door.new,
				Plumbing.new
			]
		end
	end
end