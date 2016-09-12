module RoomType
	class Exterior
		def features
			[
				Roof.new,
				Wall.new,
				Door.new,
				Pool.new,
				Landscape.new,
				Patio.new,
				Porch.new
			]
		end
	end
end